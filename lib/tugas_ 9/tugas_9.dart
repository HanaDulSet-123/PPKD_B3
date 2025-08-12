import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_%209/modelproduk.dart';

class listminuman extends StatefulWidget {
  const listminuman({super.key});

  @override
  State<listminuman> createState() => _listminumanState();
}

class _listminumanState extends State<listminuman> {
  final List<String> minuman = [
    "Air Putih",
    "Americano",
    "Cappucino",
    "Coffe Latte",
    "Milkshake Choco",
    "Milkshake Strawberry",
    "Choco Uyu",
    "Banana Uyu",
    "Apple Juice",
    "Sour Grapes Juice",
  ];

  final List<Map<String, dynamic>> produk = [
    {
      "nama": "Air Putih",
      "Price": 2000,
      "Icon": Icons.water_damage,
      "warna": const Color.fromARGB(255, 216, 39, 33),
    },
    {
      "nama": "Americano",
      "Price": 10000,
      "Icon": Icons.coffee,
      "warna": const Color.fromARGB(255, 211, 130, 8),
    },
    {
      "nama": "Cappucino",
      "Price": 7000,
      "Icon": Icons.coffee,
      "warna": const Color.fromARGB(255, 228, 196, 15),
    },
    {
      "nama": "Coffe Latte",
      "Price": 10000,
      "Icon": Icons.coffee_sharp,
      "warna": const Color.fromARGB(255, 118, 247, 13),
    },
    {
      "nama": "Milshake Choco",
      "Price": 12000,
      "Icon": Icons.coffee_sharp,
      "warna": const Color.fromARGB(255, 12, 218, 183),
    },
    {
      "nama": "Milkshake Strawberry",
      "Price": 12000,
      "Icon": Icons.coffee_sharp,
      "warna": Colors.blue,
    },
    {
      "nama": "Choco Uyu",
      "Price": 10000,
      "Icon": Icons.coffee_sharp,
      "warna": const Color.fromARGB(255, 13, 86, 221),
    },
    {
      "nama": "Banana Uyu",
      "Price": 12000,
      "Icon": Icons.coffee_sharp,
      "warna": const Color.fromARGB(255, 16, 103, 173),
    },
    {
      "nama": "Apple Juice",
      "Price": 15000,
      "Icon": Icons.coffee_sharp,
      "warna": const Color.fromARGB(255, 26, 29, 207),
    },
    {
      "nama": "Sour Grapes Juice",
      "Price": 15000,
      "Icon": Icons.coffee_sharp,
      "warna": const Color.fromARGB(255, 49, 18, 228),
    },
  ];

  final List<ProdukModel> produkMinuman = [
    ProdukModel(nama: "Air Putih", price: 2000, warna: Colors.black),
    ProdukModel(nama: "Americano", price: 10000, warna: Colors.black),
    ProdukModel(nama: "Cappucino", price: 7000, warna: Colors.black),
    ProdukModel(nama: "Coffe Latte", price: 10000, warna: Colors.black),
    ProdukModel(nama: "Milkshake Choco", price: 12000, warna: Colors.black),
    ProdukModel(
      nama: "Milkshake Strawberry",
      price: 12000,
      warna: Colors.black,
    ),
    ProdukModel(nama: "Choco Uyu", price: 10000, warna: Colors.black),
    ProdukModel(nama: "Banana Uyu", price: 12000, warna: Colors.black),
    ProdukModel(nama: "Apple Juice", price: 15000, warna: Colors.black),
    ProdukModel(nama: "Sour Grapes Juice", price: 15000, warna: Colors.black),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: minuman.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(minuman[index]),
                leading: CircleAvatar(child: Text("${index + 1}")),
              );
            },
          ),
          Divider(),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: produk.length,
            itemBuilder: (BuildContext context, int index) {
              final dataProduk = produk[index];
              return ListTile(
                title: Text(dataProduk["nama"]),
                subtitle: Text(dataProduk["Price"].toString()),
                trailing: CircleAvatar(backgroundColor: dataProduk["warna"]),
                leading: Icon(
                  dataProduk["Icon"],
                  color: const Color.fromARGB(255, 85, 85, 81),
                ),
              );
            },
          ),
          // Divider(),
        ],
      ),
    );
  }
}
