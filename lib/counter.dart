import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  final List<int> _num = [1, 2, 3, 4];

  int get length => _num.length;

  List<int> get num => _num;

  void incrementCount() {
    _num.add(_num.last + 1);
    notifyListeners();
  }
}
