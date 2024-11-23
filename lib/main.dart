import 'package:flutter/material.dart';
import 'package:login_or_signup_exam/view/splash_screen.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}