// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MenuModel {
  final String jumlah_pesanan;
  final String name;
  final String? city;
  MenuModel({required this.jumlah_pesanan, required this.name, this.city});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jumlah_pesanan': jumlah_pesanan,
      'name': name,
      'city': city,
    };
  }

  factory MenuModel.fromMap(Map<String, dynamic> map) {
    return MenuModel(
      jumlah_pesanan: map['jumlah_pesanan'] as String,
      name: map['name'] as String,
      city: map['city'] != null ? map['city'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MenuModel.fromJson(String source) =>
      MenuModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
