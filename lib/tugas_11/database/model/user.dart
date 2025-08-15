import 'dart:convert';

class User {
  final int? id;
  final String pesanan;
  final String name;
  final String? city;
  User({this.id, required this.pesanan, required this.name, this.city});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'password': pesanan,
      'name': name,
      'city': city,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      pesanan: map['pesanan'] as String,
      name: map['name'] as String,
      city: map['city'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
