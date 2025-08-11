import 'package:flutter/material.dart';

class CheckboxTugas extends StatefulWidget {
  const CheckboxTugas({super.key});

  @override
  State<CheckboxTugas> createState() => _CheckboxTugasState();
}

class _CheckboxTugasState extends State<CheckboxTugas> {
  bool isCheck = false;
  bool isCheckSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor: const Color.fromARGB(255, 115, 35, 186),
                      value: isCheck,
                      onChanged: (value) {
                        setState(() {
                          isCheck = value!;
                        });
                      },
                    ),
                    Text(
                      isCheck == true
                          ? "Lanjutkan pendaftaran diperbolehkan"
                          : "Anda belum bisa melanjutkan ",
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "untuk melanjutkan ke halaman selanjutnya, pastikan anda menekan tombol setuju",
          ),
        ],
      ),
    );
  }
}
