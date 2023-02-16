class Review {
  String name;
  String content;
  int rating;
  DateTime dateCreated;
  String? email;
  String? prodcutId;
  Review({required this.name, required this.content, required this.dateCreated, required this.rating});

  Review.fromJson(Map<dynamic, dynamic> json)
      : name = json["reviewer"]["name"],
        content = json["content"],
        rating = json["rating"],
        dateCreated = DateTime.parse(json["createdAt"]);
  Map<String, dynamic> toJson() => {"content": content, "rating": rating, "email": email, "productId": prodcutId, "name": name};
}
