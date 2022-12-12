import 'package:flutter/material.dart';

class QuestionProvider extends ChangeNotifier {
  bool _isTrue = true;

  bool get isTrue => _isTrue;

  set isTrue(bool newValue) {
    _isTrue = newValue;
    notifyListeners();
  }

  get color => _isTrue ? Colors.green : Colors.pink;
  get trueColor => _isTrue ? Colors.green : Colors.grey;
  get falseColor => _isTrue ? Colors.grey : Colors.pink;
}
