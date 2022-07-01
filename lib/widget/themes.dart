import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matcher/matcher.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.blueAccent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );
  static ThemeData  get darktheme => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.amber),
       ),
      );
}
