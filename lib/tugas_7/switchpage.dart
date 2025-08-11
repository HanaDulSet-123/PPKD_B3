import 'package:flutter/material.dart';

class Switchpage extends StatefulWidget {
  const Switchpage({super.key});

  @override
  State<Switchpage> createState() => _SwitchpageState();
}

class _SwitchpageState extends State<Switchpage> {
  bool isCheckSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          isCheckSwitch == true
              ? Colors.black
              : const Color.fromARGB(255, 249, 253, 255),
      child: Column(
        children: [
          Row(
            children: [
              Switch(
                activeColor: Colors.grey,
                value: isCheckSwitch,
                onChanged: (value) {
                  setState(() {
                    isCheckSwitch = value;
                  });
                },
              ),
              Text(
                isCheckSwitch == true
                    ? "Mode Gelap Aktif"
                    : "Mode terang Aktif",
                style: TextStyle(
                  color: isCheckSwitch == true ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
