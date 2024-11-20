// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sample/view/login_screen/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("home screen"),
            ElevatedButton(
              onPressed: () async {
                final SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setBool('isLoggedIn', false);
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginScreen(),));
              },
              child: Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }
}