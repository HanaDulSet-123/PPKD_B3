import 'dart:convert';

GetUserModel15 getUserModelFromJson(String str) =>
    GetUserModel15.fromJson(json.decode(str));

String getUserModelToJson(GetUserModel15 data) => json.encode(data.toJson());

class GetUserModel15 {
  String? message;
  Data? data;
  

  GetUserModel15({this.message, this.data});

  factory GetUserModel15.fromJson(Map<String, dynamic> json) => GetUserModel15(
    message: json["message"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {"message": message, "data": data?.toJson()};
}

class Data {
  int? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  String? createdAt;
  String? updatedAt;

  Data({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
