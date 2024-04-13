import 'package:flutter/material.dart';
import 'package:mixstir/NavBar/NavBar.dart';
import 'package:mixstir/HomeScreen/HomePage.dart';
import 'package:mixstir/Communities/ComPage.dart';
import 'package:mixstir/Calendar/CalendarPage.dart';
import 'package:mixstir/Accounts/AccountsPage.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // TODO: Replace these with proper links to the pages that they will be linked to
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ComPage(),
    CalendarPage(),
    AccountsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MixStir'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: NavBar( 
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}