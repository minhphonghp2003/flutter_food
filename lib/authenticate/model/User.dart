class User {
  String first_name;
  String? password;
  String? id;
  String last_name;
  String email;
  String phone;
  String username;

  User(
      {this.id,
      required this.password,
      required this.email,
      required this.first_name,
      required this.last_name,
      required this.phone,
      required this.username});

  User.fromJson(Map<dynamic, dynamic> json)
      : email = json['email'],
        id = json['id'],
        phone = json['phone'],
        first_name = json['first_name'],
        last_name = json['last_name'],
        username = json['username'];

  Map<String, dynamic> toJsonForReg() => {
        'password': password,
        'first_name': first_name,
        'username': username,
        'last_name': last_name,
        'phone': phone,
        'email': email,
      };
}
