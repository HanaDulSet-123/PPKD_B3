import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas4/tugas_4.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownTugas();
}

class _DropdownTugas extends State<Dropdown> {
  bool isCheck = false;
  bool isCheckSwitch = false;
  String? dropdownSelect;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("Drop Down"),
          DropdownButton(
            value: dropdownSelect,
            hint: Text("Pilih Kategori Produk "),
            items:
                ["Elektronik", "Pakaian", "Makanan", "Lainnya"].map((
                  String value,
                ) {
                  return DropdownMenuItem(value: value, child: Text(value));
                }).toList(),
            onChanged: (value) {
              dropdownSelect = value;
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Tugas4()),
              );
            },
            child: Text("Tugas 4"),
          ),
        ],
      ),
    );
  }
}
