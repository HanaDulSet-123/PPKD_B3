import 'package:flutter/material.dart';
import 'package:ppkd_b_3/extention/extention.dart';
import 'package:ppkd_b_3/tugas_10/home_a.dart';
import 'package:ppkd_b_3/tugas_11/preference/shared_preference.dart';
import 'package:ppkd_b_3/tugas_11/utils/app_Image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const id = "/splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    bool? isLogin = await Preference.getLogin();

    Future.delayed(Duration(seconds: 3)).then((value) async {
      print(isLogin);
      if (isLogin == true) {
        context.pushReplacementNamed(AppImage.chikkensteak);
      } else {
        context.push(Tugas10HomeA());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImage.logoRestoran),
            SizedBox(height: 10),
            Text("Welcome"),
          ],
        ),
      ),
    );
  }
}
