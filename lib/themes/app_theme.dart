import 'package:flutter/material.dart';

class AppTheme {
  static final Color primary = Colors.deepPurple.shade200;
  static const double elevationMin = 10;
  static const Color white = Colors.white;
  static const Color errorColor = Colors.red;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario de la aplicación
      primaryColor: primary,
      errorColor: errorColor,

      // Scheme colors
      colorScheme: ColorScheme(
        primary: primary, // focus
        onPrimary: white, //AppBar Title color

        background: primary,
        onBackground: white,

        secondary: primary, //float action button
        onSecondary: Colors.white,

        error: errorColor,
        onError: errorColor,

        surface: primary, // AppBar
        onSurface: Colors.deepPurple.shade400, //icons, inputs

        brightness: Brightness.light,
      ),

      // AppBar Theme
      appBarTheme: AppBarTheme(
        color: primary,
        elevation: 0,
      ),

      // TextButton theme
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

      // ListTile theme
      listTileTheme: ListTileThemeData(
        iconColor: primary,
      ),

      // Icon Theme
      iconTheme: IconThemeData(color: primary),

      // Card Theme
      cardTheme: const CardTheme(
        elevation: elevationMin,
        clipBehavior: Clip.antiAlias,
      ),

      // FloatingActionButton
      floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: primary, elevation: 0),

      // ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(primary: primary, shape: const StadiumBorder(), elevation: 0)),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: primary), borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: primary), borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))),
        border: const OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))),
      )

      //Linea final
      );
}
