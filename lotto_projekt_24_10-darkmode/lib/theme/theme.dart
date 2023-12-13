import 'package:flutter/material.dart';

class CdemyTheme {
  final String id;
  final ThemeData themeData;

  CdemyTheme({required this.id, required this.themeData});

  static CdemyTheme lightMode = CdemyTheme(
      id: 'light',
      themeData: ThemeData(
          brightness: Brightness.light,
          colorScheme: const ColorScheme.light(
            primary: Colors.green,
            background: Color.fromARGB(255, 214, 209, 209),
            secondary: Colors.lightGreen,
          )));

  static CdemyTheme darkMode = CdemyTheme(
      id: 'dark',
      themeData: ThemeData(
          brightness: Brightness.dark,
          colorScheme: const ColorScheme.dark(
            primary: Colors.blue,
            secondary: Colors.lightBlue,
            background: Color.fromARGB(255, 49, 47, 47),
          )));
}
