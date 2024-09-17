import 'package:flutter/material.dart.';

class Provider_demo with ChangeNotifier {
  String test1 = "Sample";
  void changeValue() {
    test1 = "The Text Is Changed";
    notifyListeners();
  }
}
