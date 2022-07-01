import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/themes.dart';
import '../widget/drawer.dart';

class HomePage extends StatelessWidget {
  int no = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rocks",
          style: TextStyle(color: Colors.yellow),
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            'you can go on!$no',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 30,
              color: Colors.red,
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
