// Must be Imported for show/function AppBar, Border, BorderRadius, BoxDecoration, BuildContext, Color, Colors, Column, Container, CrossAxisAlignment, EdgeInsets, Icon, Icons, MaterialApp, Padding, Row, Scaffold, SizedBox, StatelessWidget, Text, TextStyle, Widget, runApp, Center, FontWeight;

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Tugas2flutter()));

class Tugas2flutter extends StatelessWidget {
  const Tugas2flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DATA DIRI",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 53, 80, 69),
      ),
      backgroundColor: const Color.fromARGB(255, 173, 235, 197),
      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(24),
              padding: const EdgeInsets.only(left: 5, right: 5),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(width: 5, color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),

              child: const Center(
                child: Text(
                  "PROFILE",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.all(24),
              padding: const EdgeInsets.only(left: 5, right: 5),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,

                image: DecorationImage(
                  image: AssetImage("assets/carmen.jfif"),
                  fit: BoxFit.cover,
                ),
              ),

              // child: const Center(
              //   child: Image.assets(""),
              // ),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [Text("Hanna J", style: TextStyle(fontSize: 30))],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 8),
                Text("handsup123@gmail.com", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 8),
                Text("0837-9812-2510", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.message),
                SizedBox(width: 8),
                Text("Busy", style: TextStyle(fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(15),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 80, 112, 93),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: Text("Postingan"),
                ),
                SizedBox(width: 10),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(15),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 88, 122, 103),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: Text("Likes"),
                ),
              ],
            ),
            // Expanded(
            //   child: Container(
            //
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
