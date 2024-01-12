import 'package:example_yasin/feature/posts/view/posts_view.dart';
import 'package:example_yasin/product/constants/string_constants.dart';
import 'package:example_yasin/product/initialize/app_state_initialize.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const AppStateInitialize(
      child: _MyApp(),
    ),
  );
}

final class _MyApp extends StatelessWidget {
  /// Constructor
  const _MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: StringConstants.projectTitle,
      home: PostsView(),
    );
  }
}
