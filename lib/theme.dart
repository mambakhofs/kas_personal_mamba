import 'package:flutter/material.dart';

final theme = ThemeData(
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.greenAccent,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple, foregroundColor: Colors.white),
  ),
);
