import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulir Pembelian",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(243, 29, 122, 125),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Stack(alignment: Alignment.center),
            Image.asset(
              "assets/images/Logo Perusahaan.png",
              height: 100,
              width: 300,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "-PT SMK-",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            Text("Nama"),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),

            SizedBox(height: 16),
            Text("Email"),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 16),
            Text("No. Telp"),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 16),
            Text("Deskripsi"),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 50),
            Text("Daftar Barang", style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/PC.jpeg"),
                title: Text("Photocard"),
                subtitle: Text("Rp. 50.000"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Action when tapped
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/keyring.jpeg"),
                title: Text("Keyring"),
                subtitle: Text("Rp. 50.000"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Action when tapped
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/album.jpeg"),
                title: Text("Album"),
                subtitle: Text("Rp. 150.000"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Action when tapped
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/lightstick.jpeg"),
                title: Text("Lightstick"),
                subtitle: Text("Rp. 500.000"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Action when tapped
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/ticket.jpeg"),
                title: Text("Tiket Konser"),
                subtitle: Text("Rp. 1.500.000"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Action when tapped
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
