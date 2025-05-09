import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/ui/styles/constants.dart';

class Themes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Constants.lightTextColor,
    scaffoldBackgroundColor: Constants.lightBackground,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Constants.lightBackground,
      surfaceTintColor: Constants.lightBackground,
      shadowColor: Colors.black,
      elevation: 1,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Constants.lightTextColor),
      bodyMedium: TextStyle(color: Constants.lightTextColor),
      bodySmall: TextStyle(color: Constants.lightTextColor, fontSize: 9.0),
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Constants.lightPrimaryColor,
      ),
      titleMedium: TextStyle(
        color: Constants.lightSecondaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        color: Constants.lightTextColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        color: Constants.lightPrimaryColor,
      ),
    ),
    iconTheme: IconThemeData(color: Constants.lightTextColor),
    cardColor: Colors.white,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
        foregroundColor: WidgetStateColor.resolveWith((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.hovered) ||
              states.contains(WidgetState.pressed)) {
            return Constants.lightPrimaryColor;
          }
          return Colors.black54;
        }),
        textStyle: WidgetStateProperty.all(TextStyle(fontSize: 16)),
        elevation: WidgetStatePropertyAll(0),
        minimumSize: WidgetStatePropertyAll(Size(0, 70)),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateColor.resolveWith((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.hovered) ||
              states.contains(WidgetState.pressed)) {
            return Constants.lightPrimaryColor;
          }
          return Constants.lightSecondaryColor;
        }),
        foregroundColor: WidgetStateColor.resolveWith((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.hovered) ||
              states.contains(WidgetState.pressed)) {
            return Colors.white;
          }
          return Colors.grey.shade200;
        }),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(9.0)),
        ),
        textStyle: WidgetStateProperty.all(TextStyle(fontSize: 16)),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.black87,
    appBarTheme: AppBarTheme(
      backgroundColor: Constants.darkNavigationBackground,
      foregroundColor: Constants.darkBackground,
      surfaceTintColor: Constants.darkBackground,
      shadowColor: Colors.black54,
      elevation: 0,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
      bodySmall: TextStyle(color: Colors.white60, fontSize: 9.0),
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        color: Colors.white70,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(fontSize: 16, color: Colors.white),
    ),
    iconTheme: IconThemeData(color: Colors.white70),
    cardColor: Constants.darkCardBackground,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
        foregroundColor: WidgetStateColor.resolveWith((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.hovered) ||
              states.contains(WidgetState.pressed)) {
            return Colors.white;
          }
          return Colors.white60;
        }),
        textStyle: WidgetStateProperty.all(TextStyle(fontSize: 16)),
        elevation: WidgetStatePropertyAll(0),
        minimumSize: WidgetStatePropertyAll(Size(0, 70)),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateColor.resolveWith((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.hovered) ||
              states.contains(WidgetState.pressed)) {
            return Colors.white24;
          }
          return Colors.white12;
        }),
        foregroundColor: WidgetStateColor.resolveWith((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.hovered) ||
              states.contains(WidgetState.pressed)) {
            return Colors.white;
          }
          return Colors.white60;
        }),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(9.0)),
        ),
        textStyle: WidgetStateProperty.all(TextStyle(fontSize: 16)),
      ),
    ),
  );
}
