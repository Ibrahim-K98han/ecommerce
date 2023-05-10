import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController {
  int _selectedIndex = 0;

  int get selectIndex=>_selectedIndex;

  void changeIndex(int index) {
    _selectedIndex = index;
    update();
  }

  void backToHome() {
    if (_selectedIndex != 0) {
      _selectedIndex = 0;
      update();
    }
  }
}
