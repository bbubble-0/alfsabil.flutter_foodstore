
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_foodstore/resource/model/checkout_model.dart';
import 'package:flutter_foodstore/resource/model/location_model.dart';
import 'package:flutter_foodstore/resource/model/shipping_cost_model.dart';

class CheckoutRemoteResource {
  final Dio _dio;

  CheckoutRemoteResource(this._dio);

  // MENCARI LOKASI
  Future<Either<String, List<LocationModel>>> getLocation(
    String search,
  ) async {
    try {
      final response = await _dio.get(
        'public/search-destination',
        queryParameters: {
          'search': search,
        },
      );

      final List<dynamic> data = response.data;

      final result = data
          .map((e) => LocationModel.fromMap(
                Map<String, dynamic>.from(e),
              ))
          .toList();

      return Right(result);
    } on DioException catch (e) {
      if (e.response?.statusCode == 429) {
        return Left(
          'Kuota pencarian lokasi RajaOngkir sudah habis. '
          'Silakan coba kembali setelah kuota diperbarui.',
        );
      }

      final responseData = e.response?.data;

      if (responseData is Map &&
          responseData['message'] != null) {
        return Left(responseData['message'].toString());
      }

      return Left(
        'Gagal mencari lokasi. Periksa koneksi internet dan server.',
      );
    } catch (e) {
      return Left('Terjadi kesalahan saat membaca lokasi: $e');
    }
  }

  // MENGHITUNG ONGKIR
  Future<Either<String, List<ShippingCostModel>>> getShippingCost(
    int cityId,
    int weight,
    String courierName,
  ) async {
    try {
      final response = await _dio.post(
        'public/check-ongkir',
        data: {
          'destination': cityId,
          'weight': weight,
          'courier': courierName,
        },
      );

      final List<dynamic> data = response.data;

      final result = data
          .map((e) => ShippingCostModel.fromMap(
                Map<String, dynamic>.from(e),
              ))
          .toList();

      return Right(result);
    } on DioException catch (e) {
      if (e.response?.statusCode == 429) {
        return Left('Kuota API pengiriman sudah habis.');
      }

      return Left(
        'Gagal menghitung ongkir: ${e.message ?? 'Terjadi kesalahan.'}',
      );
    } catch (e) {
      return Left('Terjadi kesalahan saat menghitung ongkir: $e');
    }
  }

  // CHECKOUT
  Future<Either<String, String>> checkOut(
    CheckoutModel checkout,
  ) async {
    try {
      final response = await _dio.post(
        'public/checkout',
        data: {
          'province_name': checkout.provinceName,
          'city_name': checkout.cityName,
          'district_name': checkout.districtName,
          'subdistrict_name': checkout.subdistrictName,
          'zip_code': checkout.zipCode,
          'full_address': checkout.fullAddress,
          'weight': checkout.weight,
          'shipping_courier': checkout.shippingCourier,
          'shipping_service': checkout.shippingService,
          'shipping_cost': checkout.shippingCost,
          'total': checkout.total,
        },
      );

      return Right(response.data['data']['snap_token']);
    } on DioException catch (e) {
      return Left(
        'Gagal checkout: ${e.message ?? 'Terjadi kesalahan.'}',
      );
    } catch (e) {
      return Left('Terjadi kesalahan saat checkout: $e');
    }
  }
}
