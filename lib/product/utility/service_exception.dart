/// Post service exception
abstract class IPostServiceException implements Exception {
  /// Constructor
  String get message;
}

/// Post service exception
class PostServiceException implements IPostServiceException {
  /// Constructor
  PostServiceException({required this.message});
  @override
  final String message;
}

/// Post service exception
class PostServiceHttpException extends PostServiceException {
  /// Constructor
  PostServiceHttpException({
    required this.statusCode,
    required super.message,
  });

  /// Status code
  final int statusCode;
}

/// Post service exception
final class PostServiceDataException extends PostServiceException {
  /// Constructor
  PostServiceDataException(String message) : super(message: message);
}
