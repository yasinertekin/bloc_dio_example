import 'package:example_yasin/feature/posts/view_model/posts_cubit.dart';
import 'package:example_yasin/product/service/posts_service.dart';
import 'package:example_yasin/product/service/service_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// This is the stateful widget that the main application instantiates.
final class AppStateInitialize extends StatelessWidget {
  /// Constructor
  const AppStateInitialize({
    required this.child,
    super.key,
  });

  /// Child
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostsCubit>(
          create: (context) => PostsCubit(
            PostService(
              ServiceManager().service,
            ),
          ),
        ),
      ],
      child: child,
    );
  }
}
