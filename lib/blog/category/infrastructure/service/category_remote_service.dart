import 'dart:convert';

import 'package:crud_flutter/blog/category/infrastructure/model/category_dto.dart';
import 'package:crud_flutter/core/infrastructure/response_dto.dart';
import 'package:crud_flutter/core/shared/config/app_consts.dart';
import 'package:dio/dio.dart';
import 'package:smf_core/smf_core.dart';

T responseDataMs<T>(Response<dynamic> response) => response.data as T;

class CategoryRemoteService {
  final Dio _dio;

  CategoryRemoteService(this._dio);

  /// Get all categories
  ///
  /// Throw [RestApiException] when request failed;
  Future<Result<List<CategoryDto>>> getAllCategories() async {
    try {
      final response = await _dio.get(AppConsts.apiEndpoints.category);

      if (response.statusCode == AppConsts.status.ok) {
        final jsonData = responseDataMs(response);
        final data = ResponseDto.fromJson(jsonData).data as List<dynamic>;
        final categories = data.map((e) => CategoryDto.fromJson(e)).toList();

        return Result.withData(categories);
      } else {
        throw RestApiException(response.statusCode, response.statusMessage);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const Result.noConnection();
      } else if (e.error != null) {
        throw RestApiException(
          e.response?.statusCode,
          e.response?.statusMessage,
        );
      } else {
        rethrow;
      }
    }
  }
}
