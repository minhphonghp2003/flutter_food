class Addon {
  int id;
  String name;
  int price;
  String image;
  Addon({required this.id, required this.name, required this.price, required this.image});
  Addon.fromJson(Map<dynamic, dynamic> json)
      : id = json["id"],
        name = json['name'],
        price = json['price'],
        image = json['image'];
}
