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
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Siguiendo",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      const Text("Para ti", style: TextStyle(fontSize: 18)),
                      const SizedBox(
                        height: 2,
                      ),
                      Container(
                        width: 45,
                        height: 2,
                        decoration: const BoxDecoration(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.white)),
                    child: ClipOval(
                        child: Image.network(
                      'https://avatars.githubusercontent.com/u/120425666?v=4',
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20, top: 20, right: 5),
                    child: Icon(Icons.favorite, size: 40),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20, right: 5),
                    child: Icon(
                      Icons.comment_outlined,
                      size: 35,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20, right: 5),
                    child: Icon(
                      Icons.ios_share,
                      size: 35,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20, right: 5),
                    child: Icon(
                      Icons.save_alt,
                      size: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  '@BR2E',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '02 27',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white30),
                                )
                              ],
                            ),
                            const Text(
                              'Esta es una descripcion general de un tiktok',
                              style: TextStyle(
                                  fontSize: 16,
                                  overflow: TextOverflow.ellipsis),
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: Icon(Icons.library_music_outlined),
                                ),
                                Text('Nombre de la cancion')
                              ],
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipOval(
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration:
                                  const BoxDecoration(color: Colors.white54),
                            ),
                          ),
                          ClipOval(
                            child: Image.network(
                              'https://avatars.githubusercontent.com/u/120425666?v=4',
                              width: 50,
                              height: 50,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
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
