part of '../posts_view.dart';

final class _PostsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const _PostsAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(StringConstants.posts),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
