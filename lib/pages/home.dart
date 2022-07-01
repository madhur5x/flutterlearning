import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widget/themes.dart';
import '../widget/drawer.dart';
import '../widget/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Rocks",
          style: TextStyle(color: Colors.yellow),
        ),
      ),
      body: ListView.builder(
          itemCount: catalog.items.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget();
          }),
    );
  }
}
