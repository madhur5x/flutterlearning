class catalog{
 static final items = [
  Item(id: 001, 
  name: "iphone 12 pro", 
  desc: "Apple iphone 12 pro", 
  color: "33505a",
   img: "http://atlas-content-cdn.pixelsquid.com/stock-images/iphone-12-pro-max-smartphone-5EX2mr2-600.jpg",
    price: 999,
    )];

}
class Item {
  final int id;
  final String name;
  final String desc;
  final String color;
  final String img;
  final num price;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.color,
      required this.img,
      required this.price}) {}
}



