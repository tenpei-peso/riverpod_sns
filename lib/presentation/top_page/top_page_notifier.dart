import 'package:flutter_riverpod/flutter_riverpod.dart';



class TopPageNotifier extends StateNotifier<int> {
  TopPageNotifier(): super(0);

  void increment() {
    state++;
  }
}