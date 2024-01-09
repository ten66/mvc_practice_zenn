// カウンターの振る舞いを表現するモデル
import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  // getとは？
  int get count => _count;

  List<int> get counts => _counts;

  // カウント値
  int _count = 0;

  // カウント値のリスト
  final List<int> _counts = [];

  // カウント値に 1 を加算する
  void increment() {
    _count++;
  }

  // カウント値をリストに追加する処理
  void append() {
    _counts.add(_count);
  }

  // カウント値とカウント値のリストをクリアする処理
  void clear() {
    _count = 0;
    _counts.clear();
  }

  // カウント値のリストの合計を計算する
  int calculateTotal() {
    return _counts.fold(0, (a, b) => a + b);
  }

  // カウント値の合計が　5 の倍数であるかを判定する
  bool isTotalMultipleOfFive() => calculateTotal() % 5 == 0;
}
