import 'dart:io';

import 'package:dio/dio.dart';
import 'package:example_yasin/product/constants/string_constants.dart';
import 'package:example_yasin/product/enum/service_enum.dart';
import 'package:example_yasin/product/model/posts.dart';
import 'package:example_yasin/product/service/service_interface.dart';
import 'package:example_yasin/product/utility/service_exception.dart';

/// A class for Posts Service
final class PostService extends IPostsService {
  /// Constructor
  PostService(super.dio);
  @override
  Future<List<Posts>> getPosts() async {
    try {
      // ignore: inference_failure_on_function_invocation
      final response = await dio.get(
        ServiceEnum.getUrl.value,
      );

      if (response.statusCode == HttpStatus.ok) {
        final responseData = response.data;

        if (responseData is List) {
          return responseData
              .map((json) => Posts.fromJson(json as Map<String, dynamic>))
              .toList();
        }

        throw PostServiceDataException(
          StringConstants.invalidResponseDataFormat,
        );
      } else {
        throw PostServiceHttpException(
          statusCode: response.statusCode ?? 0,
          message: StringConstants.httpError,
        );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // DioError with a response
        throw PostServiceHttpException(
          statusCode: e.response!.statusCode!,
          message: StringConstants.httpError,
        );
      } else {
        // DioError without a response (e.g., network error)
        throw PostServiceException(
          message: StringConstants.anUnexpectedErrorOccurred,
        );
      }
    }
  }
}
