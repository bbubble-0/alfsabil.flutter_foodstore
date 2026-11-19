import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_foodstore/core/constants/app_config.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MidtransPaymentPage extends StatefulWidget {
  final String snapToken;

  const MidtransPaymentPage({super.key, required this.snapToken});

  @override
  State<MidtransPaymentPage> createState() => _MidtransPaymentPageState();
}

class _MidtransPaymentPageState extends State<MidtransPaymentPage> {
  // WebView hanya dibuat di Android/iOS. Di Chrome (web) tidak didukung.
  WebViewController? _webViewController;

  String get _paymentUrl => AppConfig.URL_PAYMENT + widget.snapToken;

  @override
  void initState() {
    super.initState();
    if (!kIsWeb) {
      _webViewController = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(NavigationDelegate(
          onPageFinished: (url) {
            if (url.contains('/success')) {
              context.pop('success');
            } else if (url.contains('/failure')) {
              context.pop('failure');
            } else if (url.contains('transaction_status=settlement')) {
              context.pop('Payment Success');
            } else if (url.contains('transaction_status=expire')) {
              context.pop('Payment Expired');
            } else if (url.contains('transaction_status=cancel')) {
              context.pop('Payment Canceled');
            } else if (url.contains('transaction_status=deny')) {
              context.pop('Payment Denied');
            }
          },
        ))
        ..loadRequest(Uri.parse(_paymentUrl));
    }
  }

  Widget _buildWebFallback() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.payment_rounded, size: 64, color: Colors.orange),
            const SizedBox(height: 16),
            const Text(
              'Pembayaran dibuka di tab baru browser.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () => launchUrl(
                Uri.parse(_paymentUrl),
                webOnlyWindowName: '_blank',
              ),
              icon: const Icon(Icons.open_in_new, color: Colors.white),
              label: const Text('Buka halaman pembayaran',
                  style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => context.pop('Silakan cek status pesanan'),
              child: const Text('Saya sudah selesai'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
        title: const Text(
          'Midtrans Payment',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: kIsWeb
          ? _buildWebFallback()
          : WebViewWidget(controller: _webViewController!),
    );
  }
}