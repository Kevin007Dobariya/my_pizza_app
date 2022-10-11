import 'package:flutter/material.dart';
typedef void VoidCallbackFunction(dynamic value);
typedef void VoidEmptyParameterCallbackFunction();
typedef String? StringCallbackFunction(dynamic value);
class Screen {
  static double? _screenWidth;
  static double? _screenHeight;
  static double? _appbarHeight;
  static double? _bottomHeight;

  static setScreenSize(BuildContext context) {
    _screenHeight = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
    _appbarHeight = MediaQuery.of(context).padding.top;
    _bottomHeight = MediaQuery.of(context).padding.bottom;
  }

  static double? get screenWidth => _screenWidth;

  static double? get screenHeight => _screenHeight;

  static double? get appbarHeight => _appbarHeight;

  static double? get bottomHeight => _bottomHeight;
}