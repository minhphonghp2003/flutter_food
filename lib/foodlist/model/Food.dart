import 'Category.dart';

class Food {
  String id;
  String name;
  String price;
  String image;
  int reviewCount;
  double rating;
  bool isFavorite;
  List<Category> categories;

  Food(
      {required this.id,
      required this.image,
      required this.name,
      required this.price,
      required this.reviewCount,
      required this.rating,
      required this.isFavorite,
      required this.categories});

  Food.fromJson(Map<dynamic, dynamic> json)
      : id = json['id'],
        name = json['name'],
        image = json['images'],
        rating = json['rating'] != null ? json['rating'] * 1.0 : 0.0,
        isFavorite = json['isFavorite'],
        reviewCount = json['reviewCount'] != null ? json['reviewCount'] : 0,
        categories = (json['categories'] as List).map((e) => Category.fromJson(e)).toList(),
        price = json['price'].toString();
}
