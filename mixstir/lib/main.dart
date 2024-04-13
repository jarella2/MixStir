import "package:flutter/material.dart";
import "HomeScreen/HomeScreen.dart";
import "Login/Login.dart";
import "Register/Register.dart";

void main() {
  runApp(const MixStirApp());
}

class MixStirApp extends StatelessWidget {
  const MixStirApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MixStir',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Login(), // Your Login widget is the first screen
      routes: {
        '/home': (context) => MyHomePage(),
        '/register': (context) => const Register()
      },
    );
  }
}
