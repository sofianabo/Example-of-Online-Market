// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class theme {
  static ThemeData darktheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: Colors.amberAccent,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
      scaffoldBackgroundColor: Colors.black87,
      textTheme: const TextTheme(
        titleMedium: TextStyle(color: Colors.white),
        titleLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        bodyLarge: TextStyle(color: Colors.white),
      ),
      primaryIconTheme: const IconThemeData(color: Colors.white),
      iconTheme: const IconThemeData(color: Colors.white),
      cardColor: Colors.black12);

  static ThemeData lighttheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.white70,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.amberAccent,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.black),
        bodyMedium: TextStyle(color: Colors.black),
        titleMedium: TextStyle(color: Colors.black),
        titleLarge: TextStyle(color: Colors.black),
      ),
      primaryIconTheme: const IconThemeData(color: Colors.black),
      iconTheme: const IconThemeData(color: Colors.black),
      cardColor: Colors.grey[200]);
}
