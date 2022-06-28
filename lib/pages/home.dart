import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int no = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rocks"),
      ),
      body: Center(
        child: Container(
          child: Text('hello world! times $no',
          style:TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 40,
            color: Colors.blueAccent,
            ),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
