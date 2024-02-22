import 'package:flutter/material.dart';
import 'package:nirvana/themes/dark_mode.dart';
import 'package:nirvana/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier{
  // start in dark mode
  ThemeData _themeData = darkMode;

  ThemeData get themeData =>_themeData;

  bool get isDarkMode =>_themeData == darkMode;


  set themeData(ThemeData themeData) {
    _themeData = themeData;

    notifyListeners();
  }

  //toggle theme
  void toggleTheme(){
    if(_themeData == darkMode){
      themeData = lightMode;
    } else{
      themeData= darkMode;
    }
  }


}