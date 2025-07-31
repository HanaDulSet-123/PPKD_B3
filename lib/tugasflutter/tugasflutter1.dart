import 'package:flutter/material.dart';

class Tugasflutter1 extends StatelessWidget {
  const Tugasflutter1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PPKD Batch 3"),
        backgroundColor: Colors.amber,
        actions: [Icon(Icons.favorite), Icon(Icons.message)],
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text("Saya", style: TextStyle(fontSize: 80, color: Colors.black)),
          SizedBox(height: 8),

        Text(
          "Hanna",
          style: TextStyle(
            fontSize: 80,
            color: const Color.fromARGB(255, 182, 182, 11),
            fontFamily: "PlaywriteHu"
          ),
        ),
        Text(
          "Hanna",
          style: TextStyle(
            fontSize: 80,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
        ),
        ),
        Row(
          children: [Text("Nama :"), SizedBox(width: 40,), Text("Hanna")],
        ),
      ],
    ),
  );
}
}
