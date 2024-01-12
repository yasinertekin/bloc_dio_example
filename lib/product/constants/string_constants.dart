import 'package:flutter/material.dart';

@immutable

/// StringConstants
final class StringConstants {
  /// Constructor
  const StringConstants._();

  /// Posts
  static const String posts = 'Posts';

  /// Failed to fetch posts
  static const String failedToFetchPosts = 'Failed to fetch posts';

  /// An error occurred
  static const String anErrorOccurred = 'An error occurred';

  /// Project Title
  static const String projectTitle = 'Bloc Example';

  /// Invalid Response Data Format
  static const String invalidResponseDataFormat =
      'Invalid response data format';

  /// Http Error
  static const String httpError = 'HTTP error';

  /// An unexpected error occurred
  static const String anUnexpectedErrorOccurred =
      'An unexpected error occurred.';
}
