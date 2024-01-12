import 'package:example_yasin/feature/posts/view_model/post_state.dart';
import 'package:example_yasin/product/constants/string_constants.dart';
import 'package:example_yasin/product/service/service_interface.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// PostsCubit
final class PostsCubit extends Cubit<PostState> {
  /// Constructor
  PostsCubit(this.postsService)
      : super(
          PostState(
            isLoading: false,
            posts: [],
          ),
        );

  /// PostsService
  final IPostsService postsService;

  /// Get posts
  Future<void> getPosts() async {
    try {
      emit(PostState.loading());

      final datas = await postsService.getPosts();

      if (datas != null) {
        emit(PostState.loaded(datas));
      } else {
        emit(
          PostState.error(
            StringConstants.failedToFetchPosts,
          ),
        );
      }
    } catch (e) {
      emit(
        PostState.error(
          StringConstants.anErrorOccurred,
        ),
      );
    }
  }
}
