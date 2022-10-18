import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get mainTheme {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 8.0,
        shadowColor: Colors.black26,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      cardTheme: CardTheme(
        elevation: 8.0,
        shadowColor: Colors.black26,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
