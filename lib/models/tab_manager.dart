

import 'package:flutter/material.dart';

class TabManager extends ChangeNotifier{
  int currentTab = 0;

  void goToTab(int index){
    currentTab = index;
    notifyListeners();
  }

  void goToRecipe(){
    currentTab = 1;
    notifyListeners();
  }
}