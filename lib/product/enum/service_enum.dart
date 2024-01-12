/// Service enum
enum ServiceEnum {
  /// Base url
  baseUrl,

  /// Get url
  getUrl,
}

/// Service enum extension
extension ServiceEnumExtension on ServiceEnum {
  /// Get value
  String get value {
    switch (this) {
      case ServiceEnum.baseUrl:
        return 'https://jsonplaceholder.typicode.com';
      case ServiceEnum.getUrl:
        return '/posts';
    }
  }
}
