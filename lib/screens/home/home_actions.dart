import 'package:flutter/material.dart';

class HomeActions extends ChangeNotifier {
  String text = 'alaa bashiyi';

  void changeText(String newText) {
    text = newText;
    notifyListeners();
  }
}