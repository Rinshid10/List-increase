import 'package:flutter/material.dart';

class IncrementTheList extends ChangeNotifier {
  List count = [1];

  void increment() {
    int a = count.last;
    count.add(a + 1);
    notifyListeners();
  }

  void decrement() {
    count.removeLast();
    notifyListeners();
  }
}
