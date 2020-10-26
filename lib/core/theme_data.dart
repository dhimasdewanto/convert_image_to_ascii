import 'package:flutter/material.dart';

final themeLight = ThemeData.light().copyWith(
  tabBarTheme: ThemeData.light().tabBarTheme.copyWith(
        indicator: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 2,
            ),
          ),
        ),
      ),
);

final themeDark = ThemeData.dark().copyWith(
  tabBarTheme: ThemeData.dark().tabBarTheme.copyWith(
        indicator: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      ),
);
