import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  // getter
  int get count => _count;
  // setter
  set count(int count) {
    _count = count;
    notifyListeners();
  }
}
