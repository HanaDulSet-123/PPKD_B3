import 'package:flutter/material.dart';

class Tugasflutter1 extends StatelessWidget {
  const Tugasflutter1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PPKD Batch 3"),
        backgroundColor: const Color.fromARGB(255, 16, 206, 89),
        actions: [Icon(Icons.favorite), Icon(Icons.message)],
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.location_on),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text(
            "Saya seorang komposer dan musisi handal, yang terus berkarya di dunia yang kadang kidding ini.",
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 3, 122, 131),
            ),
          ),
          SizedBox(height: 8),

          Text(
            "Hanna Dea Sabrina",
            style: TextStyle(
              fontSize: 30,
              color: const Color.fromARGB(255, 182, 182, 11),
              fontFamily: "PlaywriteHu",
            ),
          ),
          Text(
            "Jakarta",
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(children: [Text("Nama :"), SizedBox(width: 40), Text("Hanna")]),
        ],
      ),
    );
  }
}
