class Category {
  int id;
  String name;
  String? imageUrl;
  Category({required this.id, this.imageUrl, required this.name});

  Category.fromJson(Map<dynamic, dynamic> json)
      : id = json['id'],
        imageUrl = json['image'],
        name = json['name'];
}
