import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widget/themes.dart';
import '../widget/drawer.dart';
import '../widget/item_widget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadata();
  }

  loadata() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogjson = await rootBundle.loadString("assets/files/catalog.json");
    print(catalogjson);
    var decodedata = jsonDecode(catalogjson);
    var productdata = decodedata["product"];
    catalog.items =
        List.from(productdata).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (catalog.items != null && catalog.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index) {
                  final item = catalog.items[index];
                  return Card(
                    elevation: 2.0,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: GridTile(
                        header: Container(
                          child: Text(item.name),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(color: Colors.amber[600]),
                        ),
                        footer: Container(
                          child: Text(item.price.toString()),
                          decoration: BoxDecoration(color: Colors.grey[350]),
                        ),
                        child: Image.network(item.img)),
                  );
                },
                itemCount: catalog.items.length,
              )
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
