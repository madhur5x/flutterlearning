import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:matcher/matcher.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item}) :assert(item != null);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (() {
          print("${item.name} pressed");
        }),
        leading: Image.network(item.img),
        title: Text(
          item.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price.toString()}/-Only",
          textScaleFactor: 1.10,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
