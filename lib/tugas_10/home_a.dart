import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_10/home_b.dart';
import 'package:ppkd_b_3/tugas_10/textform.dart';

class Tugas10HomeA extends StatefulWidget {
  const Tugas10HomeA({super.key});

  @override
  State<Tugas10HomeA> createState() => _Tugas10HomeAState();
}

class _Tugas10HomeAState extends State<Tugas10HomeA> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController citycontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
            key: _formKey,
            child: Column(
              spacing: 10,
              children: [
                Row(children: [Text('Email')]),
                TextFormConst(
                  hintText: "Masukan Email",
                  controller: emailcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email tidak boleh kosong";
                    }
                    return null;
                  },
                  onChanged: (p0) {
                    setState(() {});
                  },
                ),
                Row(children: [Text('Nama')]),
                TextFormConst(
                  hintText: "Masukan Nama",
                  controller: namecontroller,
                  onChanged: (p0) {
                    setState(() {});
                  },
                ),
                Row(children: [Text('Phone')]),
                TextFormConst(
                  hintText: "Masukan Phone",
                  controller: phonecontroller,
                  onChanged: (p0) {
                    setState(() {});
                  },
                ),
                Row(children: [Text('Domisili')]),
                TextFormConst(
                  hintText: "Masukan Domisili",
                  controller: citycontroller,
                  onChanged: (p0) {
                    setState(() {});
                  },
                ),

                Text(
                  emailcontroller.text,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                ElevatedButton(
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Email tidak valid")),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Sukses"),
                            content: Text("Daftar Berhasil"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // Tutup dialog
                                  // Pindah ke halaman berikut
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => Tugas10HomeB(
                                            email: emailcontroller.text,
                                            name: namecontroller.text,
                                            city: citycontroller.text,
                                          ),
                                    ),
                                  );
                                },
                                child: Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text("Daftar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
