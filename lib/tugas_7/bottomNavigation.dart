import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_7/tugas7.dart';

class buttomnavigationTugas extends StatefulWidget {
  const buttomnavigationTugas({super.key});

  @override
  State<buttomnavigationTugas> createState() => _buttomnavigationTugasState();
}

class _buttomnavigationTugasState extends State<buttomnavigationTugas> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const Tugas7(), const AboutPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 177, 116, 116),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 196, 105, 105),
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff21BDCA),
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Tentang'),
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          Text(
            'Tentang Aplikasi',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 37, 93, 212),
            ),
          ),

          SizedBox(height: 16),
          Text(
            'Aplikasi ini siap menghibur kegabutan Anda',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text('#Hanna_Slebew', style: TextStyle(fontSize: 16)),
          Text(
            'Versi: 0.0.1',
            style: TextStyle(fontSize: 16, color: Color(0xff21BDCA)),
          ),
        ],
      ),
    );
  }
}
