import 'package:flutter/material.dart';

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulir",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(243, 29, 122, 125),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [Container(height: 10, width: 50)],
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

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 3,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(
                        16,
                      ), // optional, biar teksnya tidak nempel ke pinggir
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 160, 6),
                        borderRadius: BorderRadius.circular(
                          12,
                        ), // isi dengan nilai radius
                      ),
                      child: Text(
                        'Biodata',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 8, 3, 3),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                // Stack di dalam grid item
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(
                        16,
                      ), // optional, biar teksnya tidak nempel ke pinggir
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 57, 121, 238),
                        borderRadius: BorderRadius.circular(
                          12,
                        ), // isi dengan nilai radius
                      ),
                      child: Text(
                        'Berkas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(
                        16,
                      ), // optional, biar teksnya tidak nempel ke pinggir
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 62, 201, 69),
                        borderRadius: BorderRadius.circular(
                          12,
                        ), // isi dengan nilai radius
                      ),
                      child: Text(
                        'Alamat',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(
                        20,
                      ), // optional, biar teksnya tidak nempel ke pinggir
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(162, 4, 161, 182),
                        borderRadius: BorderRadius.circular(
                          12,
                        ), // isi dengan nilai radius
                      ),
                      child: Text(
                        'Dokum',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 39, 6, 6),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(
                        16,
                      ), // optional, biar teksnya tidak nempel ke pinggir
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 17, 19, 179),
                        borderRadius: BorderRadius.circular(
                          12,
                        ), // isi dengan nilai radius
                      ),
                      child: Text(
                        'PDF',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(
                        16,
                      ), // optional, biar teksnya tidak nempel ke pinggir
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 161, 27, 161),
                        borderRadius: BorderRadius.circular(
                          12,
                        ), // isi dengan nilai radius
                      ),
                      child: Text(
                        'Menu',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 71, 10, 10),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
