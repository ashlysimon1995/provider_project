import 'package:flutter/material.dart';

class Counter_controller with ChangeNotifier {
  int count = 0;
  void add() {
    count++;
    notifyListeners(); //chnage avunnath notify cheyan
  }

  void sub() {
    count--;
    notifyListeners();
  }
}
