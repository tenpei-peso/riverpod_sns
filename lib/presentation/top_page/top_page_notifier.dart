import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

final topPageNotifier =
StateNotifierProvider<TopPageNotifier, int>((ref) => TopPageNotifier());

class TopPageNotifier extends StateNotifier<int> {
  TopPageNotifier() : super(0);

  Future<void> createUser() async {
    state++; //カウントアップ

    const uuid = Uuid();
    final String v4 = uuid.v4();

    final Map<String, dynamic> userData = {
      "userName": "Alice",
      "uid": v4,
    }; //渡すデータモデル

    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(v4)
          .set(userData);
      print('送信されました');
    } catch (e) {
      print('送信失敗しました');
      print(e);
    }
  }
}
