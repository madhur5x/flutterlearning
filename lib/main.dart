import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/Login_Page.dart';
import 'package:flutter_application_1/util/routes.dart';
import 'package:flutter_application_1/widget/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    int days = 10;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: homepage(),
      themeMode: ThemeMode.dark,
      theme: MyTheme.lighttheme(context),
      darkTheme: MyTheme.darktheme,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoutes: (context) => HomePage(),
        MyRoutes.loginRoutes: (context) => Login_Page()
      },
    );
  }
}
