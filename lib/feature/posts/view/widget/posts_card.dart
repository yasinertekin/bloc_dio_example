part of '../posts_view.dart';

final class _PostsCard extends StatelessWidget {
  const _PostsCard({
    required this.posts,
  });

  final Posts posts;

  @override
  Widget build(BuildContext context) {
    const elevation = 2.0;
    const padding = 8.0;
    const cardColor = Colors.yellow;
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Card(
        color: cardColor,
        elevation: elevation,
        child: ListTile(
          title: Text(
            posts.title ?? '',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          subtitle: Text(
            posts.body ?? '',
          ),
        ),
      ),
    );
  }
}
