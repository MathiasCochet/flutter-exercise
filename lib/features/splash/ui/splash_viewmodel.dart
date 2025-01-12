import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_viewmodel.g.dart';

@riverpod
Future<bool> splashAction(Ref ref) async {
  await Future.delayed(const Duration(seconds: 2));

  return true;
}
