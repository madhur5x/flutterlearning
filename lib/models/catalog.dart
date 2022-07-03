class catalog {
  static  List<Item> items = [];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String img;
  final num price;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.img,
      required this.price});

     factory Item.fromMap(Map<String, dynamic>map) {
         return  Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        img: map["img"],
        price: map["price"],
        );
        

  }
}
