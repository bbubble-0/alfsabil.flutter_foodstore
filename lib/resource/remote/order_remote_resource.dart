
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_foodstore/resource/model/order_model.dart';
import 'package:flutter_foodstore/resource/model/paging_model.dart';

class OrderRemoteResource {
  final Dio _dio;

  OrderRemoteResource(this._dio);

  Future<Either<String, PagingModel>> fetchOrders({
    int page = 1,
  }) async {
    try {
      final response = await _dio.get(
        'customer/my-orders',
        queryParameters: {'page': page},
      );

      final result = PagingModel.fromMap(
        response.data['data'],
        OrderModel.fromMap,
      );

      return Right(result);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return Left('401');
      }
      return Left(e.toString());
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, dynamic>> detailOrder(
    String snapToken,
  ) async {
    try {
      final response = await _dio.get(
        'customer/my-orders/${Uri.encodeComponent(snapToken)}',
      );

      return Right(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return Left('401');
      }
      return Left(e.toString());
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, String>> reviewProduct(
    int transactionDetailId,
    int productId,
    int rating,
    String review,
  ) async {
    try {
      final response = await _dio.post(
        'customer/ratings',
        data: {
          'transaction_detail_id': transactionDetailId,
          'product_id': productId,
          'rating': rating,
          'review': review,
        },
      );

      return Right(response.data['message']);
    } on DioException catch (e) {
      return Left(
        e.response?.data?['message']?.toString() ?? e.toString(),
      );
    } catch (e) {
      return Left(e.toString());
    }
  }
}
