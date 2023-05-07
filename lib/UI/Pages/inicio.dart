import 'package:flutter/material.dart';
import '../Widgets/column_navigator_icon.dart';
import 'page_view.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const PageScroll(),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const ColumnNavigator(),
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
