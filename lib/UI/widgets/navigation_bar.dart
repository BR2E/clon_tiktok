import 'package:flutter/material.dart';

class BottonNav extends StatefulWidget {
  const BottonNav({super.key});

  @override
  State<BottonNav> createState() => _BottonNavState();
}

class _BottonNavState extends State<BottonNav> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      currentIndex: selectedIndex,
      onTap: (value) {
        setState(() {
          selectedIndex = value;
        });
      },
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 25), label: "Inicio"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.people_alt, size: 25), label: "Amigos"),
        BottomNavigationBarItem(
            icon: Image.asset('assets/plus.png'), label: ""),
        const BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined, size: 25),
            label: "Bandeja de entrada"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, size: 25),
            label: "Cuenta")
      ],
    );
  }
}
