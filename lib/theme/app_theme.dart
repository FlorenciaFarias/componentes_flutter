import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Color.fromARGB(255, 2, 51, 73);

  static const Color iconColors = Colors.blueGrey;

  static final ThemeData lightTheme = 
    ThemeData.light().copyWith(
        primaryColor: primary,


        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 5, 50, 73),
            shape: const StadiumBorder(),
            elevation: 0

          ),
        )
      
  );
}