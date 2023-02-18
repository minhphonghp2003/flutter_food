class Cart {
  int quanity;
  String productId;
  String name;
  String image;
  String price;
  Cart({required this.quanity, required this.productId, required this.name, required this.image, required this.price});
  Cart.fromJson(Map<dynamic, dynamic> json)
      : quanity = json["quanity"],
        productId = json["productId"],
        name = json["product"]["name"],
        image = json["product"]["images"],
        price = json["product"]["price"];
}
