import 'package:dio/dio.dart';
import 'package:example_yasin/product/model/posts.dart';

/// An interface for PostsService
abstract class IPostsService {
  /// Constructor
  IPostsService(this.dio);

  /// Returns a list of Posts objects
  Future<List<Posts>>? getPosts();

  /// Returns a Dio object
  final Dio dio;
}
