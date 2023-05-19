import 'package:flutter_riverpod/flutter_riverpod.dart';

final topPageNotifier =
    StateNotifierProvider<TopPageNotifier, int>((ref) => TopPageNotifier());

class TopPageNotifier extends StateNotifier<int> {
  TopPageNotifier() : super(0);

  void increment() {
    state++;
  }
}
