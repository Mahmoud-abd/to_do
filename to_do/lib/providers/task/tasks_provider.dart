import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do/data/data.dart';
import 'package:to_do/providers/providers.dart';

final tasksProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});