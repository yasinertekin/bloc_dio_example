import 'package:dio/dio.dart';
import 'package:example_yasin/product/enum/service_enum.dart';

/// Service Manager
final class ServiceManager {
  /// Service
  final service = Dio(
    BaseOptions(
      baseUrl: ServiceEnum.baseUrl.value,
    ),
  );
}
