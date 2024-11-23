import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_or_signup_exam/view/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
   ),
);
}
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome")
      ),
);
}
}