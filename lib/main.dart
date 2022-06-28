import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/Login_Page.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    int days = 10;

    return MaterialApp(
      // home: homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,

      ),
      darkTheme: ThemeData(
        brightness:Brightness.dark,
        // primarySwatch: Colors.amber
      ),
      initialRoute: "/Login_Page",
      routes: {
        "/": (context) => Login_Page(),
        "/home": (context) => HomePage(),
        "/login_page": (context) => Login_Page()
      },
    );
  }
}
