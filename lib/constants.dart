import 'package:flutter/material.dart';

class Constants {
  static Color lightPrimaryColor = Color(0xFF1d3557);
  static Color lightSecondaryColor = Color(0xFF343f51);
  static Color lightTextColor = Color(0xFF262e3b);
  static Color lightContrastColor = Color(0xFF343f51);
  static Color lightBackground = Color(0xFFFAFAFA);

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: lightTextColor,
    scaffoldBackgroundColor: lightBackground,
    appBarTheme: AppBarTheme(
      backgroundColor: lightBackground,
      foregroundColor: lightBackground,
      surfaceTintColor: lightBackground,
      shadowColor: Colors.black,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: lightPrimaryColor,
      selectedLabelStyle: TextStyle(color: lightPrimaryColor),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: lightTextColor),
      bodyMedium: TextStyle(color: lightTextColor),
      bodySmall: TextStyle(color: lightTextColor, fontSize: 9.0),
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: lightPrimaryColor,
      ),
      titleMedium: TextStyle(
        color: lightSecondaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        color: lightTextColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(fontSize: 16, color: lightPrimaryColor),
    ),
    iconTheme: IconThemeData(color: lightTextColor),
    cardColor: Colors.white,
    dividerColor: lightContrastColor,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
        foregroundColor: WidgetStateColor.resolveWith((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.hovered) ||
              states.contains(WidgetState.pressed)) {
            return lightPrimaryColor;
          }
          return Colors.black54;
        }),
        textStyle: WidgetStateProperty.all(TextStyle(fontSize: 16)),
        elevation: WidgetStatePropertyAll(0),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        minimumSize: WidgetStatePropertyAll(Size(0, 70)),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Color(0xFF121212),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF121212),
      foregroundColor: Color(0xFF121212),
      surfaceTintColor: Color(0xFF121212),
      shadowColor: Colors.black54,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1F1F1F),
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(color: lightPrimaryColor),
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
    cardColor: Color(0xFF1E1E1E),
    dividerColor: lightContrastColor,
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
        elevation: WidgetStatePropertyAll(0),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        minimumSize: WidgetStatePropertyAll(Size(0, 70)),
      ),
    ),
  );
}
