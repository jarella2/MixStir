// NavBar/NavBar.dart
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  NavBar({required this.selectedIndex, required this.onItemTapped});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: "Community"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: "Calendar"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: "Account"
        )
      ],
      currentIndex: widget.selectedIndex,
      selectedItemColor: Colors.amber[800], // TODO: Change color scheme later
      onTap: widget.onItemTapped,
    );
  }
}