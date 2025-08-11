import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_7/CheckBoxTugas.dart';
import 'package:ppkd_b_3/tugas_7/DatePickerTugas.dart';
import 'package:ppkd_b_3/tugas_7/DropDown.dart';
import 'package:ppkd_b_3/tugas_7/TimePickerTugas.dart';
import 'package:ppkd_b_3/tugas_7/switchpage.dart';


class Tugas7 extends StatefulWidget {
  const Tugas7({super.key});
  static const id = "/main";
  @override
  State<Tugas7> createState() => _Tugas7State();
}

class _Tugas7State extends State<Tugas7> {
  int _selectedIndexDrawer = 0;
  static const List<String> _titles = [
    "Syarat & Ketentuan",
    "Mode Gelap / Terang",
    "Pilih Kategori Produk",
    "Pilih Tanggal Lahir",
    "Atur Pengingat",
  ];

  static const List<Widget> _widgetOption = <Widget>[
    CheckboxTugas(),
    Switchpage(),
    Dropdown(),
    DatePickerTugas(),
    TimepickerTugas(),
  ];

  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titles[_selectedIndexDrawer],
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 100, 199, 34),
      ),
      body: Center(child: _widgetOption[_selectedIndexDrawer]),
      // appBar: AppBar
      // (backgroundColor: const Color.fromARGB(255, 165, 137, 240)),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Syarat&Ketentuan"),
              onTap: () => onItemTap(0),
            ),
            ListTile(title: Text("Switch"), onTap: () => onItemTap(1)),
            ListTile(title: Text("Drop Down"), onTap: () => onItemTap(2)),
            ListTile(title: Text("Datepicker"), onTap: () => onItemTap(3)),
            ListTile(title: Text("Timepicker"), onTap: () => onItemTap(4)),
          ],
        ),
      ),
    );
  }
}
