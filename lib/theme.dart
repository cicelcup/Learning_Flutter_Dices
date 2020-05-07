import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextStyle urlStyle() {
  return TextStyle(
    color: Colors.blue,
    decoration: TextDecoration.underline,
  );
}
