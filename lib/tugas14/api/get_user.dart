import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_b_3/tugas14/model/user_model.dart';

Future<List<GetUserModel>?> getUser() async {
  final response = await http.get(
    Uri.parse("https://fakestoreapi.com/products"),
  );
  print(response.body);
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => GetUserModel.fromJson(json)).toList();
  } else {
    throw Exception("Gagal memuat data");
  }
}
