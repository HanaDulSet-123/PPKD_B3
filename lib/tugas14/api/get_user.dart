import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_b_3/tugas14/model/fake_store.dart';

Future<List<GetUserModel>> getUser() async {
  try {
    final response = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      return data.map((e) => GetUserModel.fromJson(e)).toList();
    } else {
      return [];
    }
  } catch (e) {
    return [];
  }
}
