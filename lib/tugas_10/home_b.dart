import 'package:flutter/material.dart';

class Tugas10HomeB extends StatelessWidget {
  const Tugas10HomeB({
    super.key,
    required this.email,
    this.phone,
    required this.name,
    this.city,
  });
  final String email;
  final String? phone;
  final String name;
  final String? city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Konfirmasi')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(),
              Text(
                "Terima kasih,",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "dari",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                city ?? "",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "Nama Anda telah terdaftar",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
