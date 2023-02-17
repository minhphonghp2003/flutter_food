class Review {
  String name;
  String content;
  int rating;
  DateTime? dateCreated;
  String? email;
  String? productId;
  Review({required this.name, this.email, this.productId, required this.content, required this.rating});

  Review.fromJson(Map<dynamic, dynamic> json)
      : name = json["reviewer"]["name"],
        content = json["content"],
        rating = json["rating"],
        dateCreated = DateTime.parse(json["createdAt"]);
  Map<String, dynamic> toJson() => {"content": content, "rating": rating.toString(), "email": email, "productId": productId, "name": name};
}
