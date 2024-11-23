import 'package:flutter/material.dart';
import 'package:login_or_signup_exam/view/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Home Screen"),
          IconButton(onPressed: ()  async {
             final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
// navigate to home page if already logged

                prefs.setBool("isLogged", false);  
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }, icon: Icon(Icons.logout_outlined))
        ],
      )),
    );
  }
}