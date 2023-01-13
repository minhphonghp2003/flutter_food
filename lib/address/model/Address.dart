class Address {
  String id;
  bool isDefault;
  String city;
  String commune_ward;
  String street;
  Address({required this.id, required this.isDefault, required this.city, required this.commune_ward, required this.street});
  Address.fromJson(Map<dynamic, dynamic> json)
      : id = json["address"]['id'],
        isDefault = json['default'] == 1 ? true : false,
        city = json["address"]['city'],
        commune_ward = json["address"]['commune_ward'],
        street = json["address"]['street'];

  Map<String, dynamic> toJson() => {
        'city': city,
        'communt_ward': commune_ward,
        'street': street,
      };
}
