

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


final textTheme = TextTheme(
  headline1: GoogleFonts.roboto(
      fontSize: 34,
      fontWeight: FontWeight.w400,
      letterSpacing: -1.5,
      height: 1.4),
  headline2: GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.5,
      height: 1.4),
  headline3: GoogleFonts.roboto(
      fontSize: 18, fontWeight: FontWeight.w500, height: 1.4),
  subtitle1: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      height: 1.4),
  subtitle2: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.4),
  bodyText1: GoogleFonts.roboto(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      height: 1.4),
  bodyText2: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      height: 1.4),
  button: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      height: 1.4),
  caption: GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.4),
  overline: GoogleFonts.roboto(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      height: 1.4),
);

final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF212121),
  hintColor: const Color(0xFFB70404),
  dividerColor: Colors.black12,
  textTheme: textTheme,
);

final defaultTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: const Color.fromARGB(255, 0, 155, 221),
    // primaryColor: const Color.fromRGBO(0, 51, 153, 1),
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
      centerTitle: false,
    ),
    drawerTheme: const DrawerThemeData(backgroundColor: Colors.white, surfaceTintColor: Colors.white),
    scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    hintColor: Color.fromARGB(255, 255, 255, 255),
    primaryIconTheme: const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
    dividerColor: Colors.white54,
    textTheme: textTheme,
    colorScheme: const ColorScheme.light(secondary: Color(0xFFF79327)),
    // colorScheme: ColorScheme.light(secondary: Color.fromRGBO(255, 152, 0, 1)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.white;
        }
        return Colors.white;
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        return Colors.white;
      }),
    )));

final cyanTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.cyan,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: false,
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(242, 242, 242, 1),
    hintColor: Colors.cyan,
    actionIconTheme: ActionIconThemeData(),
    primaryIconTheme: const IconThemeData(color: Colors.cyan),
    dividerColor: Colors.white54,
    textTheme: textTheme,
    colorScheme: const ColorScheme.light(secondary: Colors.purple),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.white70;
        }
        return Colors.white;
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        return Colors.cyan;
      }),
    )));

final greenTheme = ThemeData(
    primaryColor: Colors.green,
    primaryIconTheme: const IconThemeData(color: Colors.green),
    colorScheme: const ColorScheme.light(secondary: Colors.red),
    primarySwatch: Colors.grey,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: false,
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(242, 242, 242, 1),
    hintColor: Colors.green,
    actionIconTheme: ActionIconThemeData(),
    dividerColor: Colors.white54,
    textTheme: textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.white70;
        }
        return Colors.white;
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        return Colors.green;
      }),
    )));

final redTheme = ThemeData(
    primaryColor: Colors.red,
    primaryIconTheme: const IconThemeData(color: Colors.red),
    colorScheme: const ColorScheme.light(secondary: Colors.cyan),
    primarySwatch: Colors.grey,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: false,
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(242, 242, 242, 1),
    hintColor: Colors.red,
    actionIconTheme: ActionIconThemeData(),
    dividerColor: Colors.white54,
    textTheme: textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.white54;
        }
        return Colors.white;
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        return Colors.red;
      }),
    )));

final indigoTheme = ThemeData(
    primaryColor: Colors.indigo,
    primaryIconTheme: const IconThemeData(color: Colors.indigo),
    colorScheme: const ColorScheme.light(secondary: Colors.red),
    primarySwatch: Colors.grey,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: false,
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(242, 242, 242, 1),
    hintColor: Colors.indigo,
    actionIconTheme: ActionIconThemeData(),
    dividerColor: Colors.white54,
    textTheme: textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.white70;
        }
        return Colors.white;
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        return Colors.indigo;
      }),
    )));

final purpleTheme = ThemeData(
    primaryColor: Colors.purple,
    primaryIconTheme: const IconThemeData(color: Colors.purple),
    colorScheme: const ColorScheme.light(secondary: Colors.red),
    primarySwatch: Colors.grey,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: false,
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(242, 242, 242, 1),
    hintColor: Colors.purple,
    actionIconTheme: ActionIconThemeData(),
    dividerColor: Colors.white54,
    textTheme: textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.white70;
        }
        return Colors.white;
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        return Colors.purple;
      }),
    )));

final orgranTheme = ThemeData(
    primaryColor: Colors.orange,
    primaryIconTheme: const IconThemeData(color: Colors.orange),
    colorScheme: const ColorScheme.light(secondary: Colors.indigo),
    primarySwatch: Colors.grey,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: false,
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(242, 242, 242, 1),
    hintColor: Colors.orange,
    actionIconTheme: ActionIconThemeData(),
    dividerColor: Colors.white54,
    textTheme: textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.white70;
        }
        return Colors.white;
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        return Colors.orange;
      }),
    )));

final greyTheme = ThemeData(
    primaryColor: Colors.grey,
    primaryIconTheme: const IconThemeData(color: Colors.grey),
    colorScheme: const ColorScheme.light(secondary: Colors.cyan),
    primarySwatch: Colors.grey,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: false,
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(242, 242, 242, 1),
    hintColor: Colors.grey,
    actionIconTheme: ActionIconThemeData(),
    dividerColor: Colors.white54,
    textTheme: textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.white70;
        }
        return Colors.white;
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        return Colors.grey;
      }),
    )));

extension CustomColorScheme on ColorScheme {
  Color get iconBackgroud1 => Colors.red;
  Color get iconBackgroud2 => const Color.fromRGBO(0, 51, 153, 1);
  Color get iconBackgroud3 => Colors.cyan;
  Color get iconBackgroud4 => Colors.lightBlue;
  Color get iconBackgroud5 => Colors.orange;
  Color get iconBackgroud6 => Colors.indigo;
}
