import 'package:flutter/material.dart';
import '../Pages/inicio.dart';
import '../Pages/perfil.dart';
import '../Pages/mensajes.dart';

class BottonNav extends StatefulWidget {
  const BottonNav({super.key});

  @override
  State<BottonNav> createState() => _BottonNavState();
}

class _BottonNavState extends State<BottonNav> {
  int selectedIndex = 0;
  final screens = [const Inicio(), const Mensajes(), const Perfil()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 20), label: "Inicio"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined, size: 20),
              label: "Bandeja de entrada"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined, size: 20),
              label: "Cuenta")
        ],
      ),
    );
  }
}
