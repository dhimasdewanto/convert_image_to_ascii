import 'package:flutter/material.dart';

final themeDark = ThemeData.dark().copyWith(
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
