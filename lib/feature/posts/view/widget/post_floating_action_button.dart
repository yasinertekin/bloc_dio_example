part of '../posts_view.dart';

final class _PostFloatingActionButton extends StatelessWidget {
  const _PostFloatingActionButton();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.refresh),
      onPressed: () => context.read<PostsCubit>().getPosts(),
    );
  }
}
