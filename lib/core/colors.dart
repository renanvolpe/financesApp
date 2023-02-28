import 'package:flutter/material.dart';

class ColorsFinancial {
  bool darkTheme;

  ColorsFinancial(this.darkTheme) {
    startColor();
  }
  static late Color backgroundColor;
  static late Color color0;
  static late Color color1;
  static late Color color2;
  static late Color color3;

  //no changes colors
  static Color blue1 = const Color(0xff0d8de9);
  static Color blue2 = const Color(0xff3c7cfc);
  static Color green1 = const Color(0xff3c9e5e);
  static Color red1 = const Color(0xfff35555);

  //darkTheme
  Color darkBackgroundColor = const Color(0xff181a20);
  Color dark0 = Colors.white;
  Color dark1 = const Color(0xff9c9e9f);
  Color dark2 = const Color(0xff525252);
  Color dark3 = const Color(0xff1f222a);

  //lightTheme
  Color lightBackgroundColor = Colors.white;
  Color light0 = Colors.black;
  Color light1 = const Color(0xff202021);
  Color light3 = const Color(0xfffafafa);

  void startColor() {
    if (darkTheme) {
      setDarkTheme();
    } else {
      setLightTheme();
    }
  }

  void setDarkTheme() {
    backgroundColor = darkBackgroundColor;
    color0 = dark0;
    color1 = dark1;
    color2 = dark2;
    color3 = dark3;
  }

  void setLightTheme() {
    backgroundColor = lightBackgroundColor;
    color0 = light0;
    color1 = light1;
    color2 = dark2;
    color3 = light3;
  }
}
