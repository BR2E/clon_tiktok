import 'package:flutter/material.dart';

class BottonNav extends StatelessWidget {
  const BottonNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white60,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 0),
              child: Icon(Icons.home, size: 25),
            ),
            label: "Inicio"),
        const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 0),
              child: Icon(Icons.people_alt, size: 25),
            ),
            label: "Amigos"),
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Image.asset('assets/plus.png'),
            ),
            label: ""),
        const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 0),
              child: Icon(Icons.message_outlined, size: 25),
            ),
            label: "Bandeja de entrada"),
        const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 0),
              child: Icon(Icons.account_circle_outlined, size: 25),
            ),
            label: "Cuenta")
      ],
    );
  }
}
