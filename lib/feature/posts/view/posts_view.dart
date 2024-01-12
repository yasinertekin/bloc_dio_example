import 'package:example_yasin/feature/posts/view_model/post_state.dart';
import 'package:example_yasin/feature/posts/view_model/posts_cubit.dart';
import 'package:example_yasin/product/constants/string_constants.dart';
import 'package:example_yasin/product/model/posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widget/post_app_bar.dart';
part 'widget/post_floating_action_button.dart';
part 'widget/posts_card.dart';

/// This is the stateful widget that the main application instantiates.
final class PostsView extends StatelessWidget {
  /// Constructor
  const PostsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _PostsAppBar(),
      body: _PostsBody(),
      floatingActionButton: _PostFloatingActionButton(),
    );
  }
}

final class _PostsBody extends StatelessWidget {
  const _PostsBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsCubit, PostState>(
      builder: (context, posts) {
        if (posts.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (posts.error.isNotEmpty) {
          return Center(
            child: Text(posts.error),
          );
        } else {
          return _PostLists(
            posts.posts,
          );
        }
      },
    );
  }
}

final class _PostLists extends StatelessWidget {
  const _PostLists(
    this.posts,
  );

  final List<Posts> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return _PostsCard(posts: post);
      },
    );
  }
}
