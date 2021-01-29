import 'package:flutter/widgets.dart';

class DemoViewModel extends ChangeNotifier {
  int _leftCounter = 0;
  int _rightCounter = 0;

  updateListeners() {
    notifyListeners();
  }

  int getLeftCounter() {
    return _leftCounter;
  }

  int getRightCounter() {
    return _rightCounter;
  }

  void updateLeftCounter() {
    _leftCounter++;
    updateListeners();
  }

  void updateRightCounter() {
    _rightCounter++;
    updateListeners();
  }
}
