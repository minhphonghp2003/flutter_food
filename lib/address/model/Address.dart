class Address {
  String? id;
  bool? isDefault;
  String city;
  String commune_ward;
  String street;
  String district;
  Address({this.id, this.isDefault, required this.city, required this.district, required this.commune_ward, required this.street});
  Address.fromJson(Map<dynamic, dynamic> json)
      : id = json["address"]['id'],
        district = json["address"]['district'],
        isDefault = json['default'] == 1 ? true : false,
        city = json["address"]['city'],
        commune_ward = json["address"]['commune_ward'],
        street = json["address"]['street'];

  Map<String, dynamic> toJsonForUpdating() => {
        'city': city,
        'district': district,
        'commune_ward': commune_ward,
        'street': street,
        'id': id != null ? id : null,
      };

  Map<String, dynamic> toJsonForCreating() => {
        'city': city,
        'district': district,
        'commune_ward': commune_ward,
        'street': street,
      };
}
