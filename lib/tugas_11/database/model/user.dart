import 'dart:convert';

class User {
  final String pesanan;
  final String name;
  final String? city;
  User({required this.pesanan, required this.name, this.city});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': pesanan, 'name': name, 'city': city};
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      pesanan: map['pesanan'] as String,
      name: map['name'] as String,
      city: map['city'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
