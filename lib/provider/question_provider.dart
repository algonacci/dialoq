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

class MultipleQuestionProvider extends ChangeNotifier {
  bool _isSelected = true;

  bool get isSelected => _isSelected;

  set isSelected(bool newValue) {
    _isSelected = newValue;
    notifyListeners();
  }

  get selectedColor => _isSelected ? Colors.green : Colors.grey;
  get notSelectedColor => _isSelected ? Colors.grey : Colors.green;
}
