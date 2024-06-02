

import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Color.fromARGB(210, 25, 201, 255);
  static final ThemeData odenfisTheme = ThemeData(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 2
    ),
    iconTheme: const IconThemeData(
      color: primary
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primary
      )
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,        
       //shape: const StadiumBorder(), //redondeo de boton
        elevation: 0
      )
    )
    );
}