import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: const SafeArea(
          child: Center(
            child: Fondo(),
          ),
        ),
        bottomNavigationBar: _bottomNav(),
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/fondo.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
        )
      ],
    );
  }
}

Widget _bottomNav() {
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
