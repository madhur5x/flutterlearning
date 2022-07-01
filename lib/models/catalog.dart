class Item {
  final String id;
  final String name;
  final String desc;
  final String color;
  final String img;
  final num price;

  Item({this.id, this.name, this.desc, this.color, this.img, this.price});
}

final products = [
  Item(
    id:"codepur001",
    desc: "Apple Iphone 12 generation",
    color: "#33505a",
    img: "http://atlas-content-cdn.pixelsquid.com/stock-images/iphone-12-pro-max-smartphone-5EX2mr2-600.jpg",
    name: "iphone12pro", 
    price: 999,
    )];

