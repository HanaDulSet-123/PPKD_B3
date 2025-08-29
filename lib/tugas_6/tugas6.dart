import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_15/view/post_api_screen.dart';
import 'package:ppkd_b_3/tugas_7/bottomNavigation.dart';

class Tugas6 extends StatefulWidget {
  const Tugas6({super.key});
  static const id = "/login";

  @override
  State<Tugas6> createState() => _Tugas6State();
}

class _Tugas6State extends State<Tugas6> {
  final _formKey = GlobalKey<FormState>();

  void _loginSuccess() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Login Berhasil"),
          content: const Text("Selamat datang!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => buttomnavigation()),
                );
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xFF154d71),
                // image: DecorationImage(
                //   image: AssetImage('assets/Wattpad.jpg'),
                //   fit: BoxFit.cover,
                // ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5), // background transparan
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'PPKD',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.white, // biar kontras dengan background
                  ),
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
                                return "Email is invalid";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 9),
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              hintText: "Masukkan Password",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password not found";
                              } else if (value.length < 6) {
                                return "Password must be at least 6 characters";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 1),
                          Text.rich(
                            TextSpan(
                              text: 'Have an account?',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Sign Up                           ',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF1C6EA4),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer:
                                      TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder:
                                                  (context) => PostApiScreen(),
                                            ),
                                          );
                                        },
                                ),

                                TextSpan(
                                  text: 'Forgot Password',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF1C6EA4),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF1C6EA4),
                                side: const BorderSide(
                                  color: Color(0xff415E72),
                                  width: 2,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _loginSuccess();
                                }
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: RichText(
                              text: const TextSpan(
                                text: "Or Sign In with",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton.icon(
                                icon: const Icon(
                                  Icons.g_mobiledata,
                                  color: Color.fromARGB(255, 156, 51, 51),
                                ),
                                label: const Text("Google"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    243,
                                    240,
                                    240,
                                  ),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _loginSuccess();
                                  }
                                },
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton.icon(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _loginSuccess();
                                  }
                                },
                                icon: const Icon(
                                  Icons.facebook,
                                  color: Color.fromARGB(255, 33, 135, 202),
                                ),
                                label: const Text("Facebook"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    243,
                                    240,
                                    240,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
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
