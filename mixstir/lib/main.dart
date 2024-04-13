import "package:flutter/material.dart";
import "HomeScreen/HomeScreen.dart";
import "NavBar/NavBar.dart";

void main() {
  runApp(MixStirApp());
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
      home: MyHomePage(),
    );
  }
}
