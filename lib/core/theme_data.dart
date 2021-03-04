import 'package:flutter/material.dart';

final _themeDataDark = ThemeData.dark();
final _textColor = (_themeDataDark.textTheme.bodyText1 ?? const TextStyle()).color ?? Colors.white;

final themeDark = _themeDataDark.copyWith(
  appBarTheme: _themeDataDark.appBarTheme.copyWith(
    backgroundColor: _themeDataDark.canvasColor,
    elevation: 0,
  ),
  dialogTheme: _themeDataDark.dialogTheme.copyWith(
    backgroundColor: _themeDataDark.canvasColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide(
        color: _textColor,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (states) => Colors.white,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (states) => Colors.white.withOpacity(0.1),
      ),
      side: MaterialStateProperty.resolveWith<BorderSide>(
        (states) => const BorderSide(
          color: Colors.white,
        ),
      ),
      shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
        (states) => RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
  ),
  tabBarTheme: _themeDataDark.tabBarTheme.copyWith(
    indicator: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          width: 2,
          color: _textColor,
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (states) => Colors.white,
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (states) => Colors.white.withOpacity(0.1),
      ),
      shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
        (states) => RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
  ),
);
