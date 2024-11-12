import 'package:flutter/material.dart';
import 'package:to_do/config/routes/routes_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do/config/theme/app_theme.dart';

class FlutterRiverpodTodoApp extends ConsumerWidget {
  const FlutterRiverpodTodoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.watch(routesProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: route,
    );
  }
}


