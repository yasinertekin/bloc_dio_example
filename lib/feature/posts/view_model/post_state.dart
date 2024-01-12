import 'package:example_yasin/product/model/posts.dart';

/// PostState
final class PostState {
  /// Constructor
  PostState({required this.isLoading, required this.posts, this.error = ''});

  /// Factory
  factory PostState.loading() {
    return PostState(isLoading: true, posts: []);
  }

  /// Factory
  factory PostState.loaded(List<Posts> posts) {
    return PostState(isLoading: false, posts: posts);
  }

  /// Factory
  factory PostState.error(String error) {
    return PostState(isLoading: false, posts: [], error: error);
  }

  /// isLoading
  final bool isLoading;

  /// posts list
  final List<Posts> posts;

  /// error
  final String error;
}
