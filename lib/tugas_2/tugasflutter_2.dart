import 'package:flutter/material.dart';

class Tugas2flutter extends StatelessWidget {
  const Tugas2flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PROFILE",
          style: TextStyle(fontFamily: "Libertinus_Serif"),
        ),
        backgroundColor: const Color.fromARGB(255, 105, 214, 147),
      ),
  
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: const EdgeInsets.only(left: 5, right: 5),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(width: 5, color: Colors.blue),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "PROFILE",
                style: TextStyle(fontFamily: "Libertinus_Serif"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hanna", style: TextStyle(fontFamily: "Libertinus_Serif")),
              ],
            ),
            Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 8),
                Text("handsup123@gmail.com", style: TextStyle(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
