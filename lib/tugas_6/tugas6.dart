import 'package:flutter/material.dart';

class Tugas6 extends StatefulWidget {
  const Tugas6({super.key});

  @override
  State<Tugas6> createState() => _Tugas6State();
}

class _Tugas6State extends State<Tugas6> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              color: const Color.fromARGB(255, 150, 144, 144),
              alignment: Alignment.center,
              child: const Text(
                'PPKD',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 17),
                  const Text(
                    'Login Account',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Hello, you must login first to be able to use the application and enjoy all the features in Calashop',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color.fromARGB(255, 71, 73, 75),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Email Address',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const SizedBox(width: double.infinity),
                  Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                hintText: "Masukan Email",
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Email not found";
                                }
                                if (!value.contains("@")) {
                                  return "Email is empaty";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 9),
                            const Text(
                              'Email Address',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                hintText: "Masukkan Password",
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Password not found";
                                }
                                if (!value.contains("@")) {
                                  return "Confirm Password Not Found";
                                }
                                return null;
                              },
                            ),

                            const SizedBox(height: 12),

                            const SizedBox(height: 1),
                            Padding(
                              padding: EdgeInsets.only(left: 210),
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 221, 103, 6),
                                ),
                              ),
                            ),
                            SizedBox(height: 25),

                            SizedBox(
                              width: double.infinity,
                              height: 55,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrange,
                                  side: const BorderSide(
                                    color: Colors.orangeAccent,
                                    width: 2,
                                  ),

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),

                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text("Login Berhasil"),
                                          content: const Text(
                                            "Selamat datang!",
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text("OK"),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },

                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 250, 248, 247),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
