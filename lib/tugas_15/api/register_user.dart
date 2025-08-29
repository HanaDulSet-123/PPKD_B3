import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_b_3/tugas_11/utils/preference/shared_preference.dart';
import 'package:ppkd_b_3/tugas_15/api/endpoin/endpoint.dart';
import 'package:ppkd_b_3/tugas_15/model/get_user_model.dart';
import 'package:ppkd_b_3/tugas_15/model/register_model.dart';

class RegistrationAPI {
  static Future<RegisterUserModel> registerUser({
    required String email,
    required String password,
    required String name,
  }) async {
    final url = Uri.parse(Endpoint.register);
    final response = await http.post(
      url,
      body: {"name": name, "email": email, "password": password},
      headers: {"Accept": "application/json"},
    );
    if (response.statusCode == 200) {
      return RegisterUserModel.fromJson(json.decode(response.body));
    } else {
      final error = json.decode(response.body);
      throw Exception(error["message"] ?? "Register gagal");
    }
  }

  static Future<RegisterUserModel> loginUser({
    required String email,
    required String password,
  }) async {
    final url = Uri.parse(Endpoint.login);
    final response = await http.post(
      url,
      body: {"email": email, "password": password},
      headers: {"Accept": "application/json"},
    );
    if (response.statusCode == 200) {
      return RegisterUserModel.fromJson(json.decode(response.body));
    } else {
      final error = json.decode(response.body);
      throw Exception(error["message"] ?? "Register gagal");
    }
  }

  static Future<GetUserModel15> updateUser({required String name}) async {
    final url = Uri.parse(Endpoint.profile);
    final token = await Preference.getToken();

    final response = await http.put(
      url,
      
      body: {"name": name},
      headers: {"Accept": "application/json", "Authorization": token ?? ""},
    );
    if (response.statusCode == 200) {
      return GetUserModel15.fromJson(json.decode(response.body));
    } else {
      final error = json.decode(response.body);
      throw Exception(error["message"] ?? "Update gagal");
    }
  }

  static Future<GetUserModel15> getProfile() async {
    final url = Uri.parse(Endpoint.profile);
    final token = await Preference.getToken();

    print("Token: $token"); // Debug token

    final response = await http.get(
      url,
      headers: {
        "Accept": "application/json",
        "Authorization": token ?? "", // Pastikan tidak null
      },
    );

    print("Response Status: ${response.statusCode}");
    print("Response Body: ${response.body}");

    if (response.statusCode == 200) {
      return GetUserModel15.fromJson(json.decode(response.body));
    } else {
      final error = json.decode(response.body);
      print("API Error: $error");
      throw Exception(error["message"] ?? "Gagal mengambil profil");
    }
  }
}
