import 'package:flutter/material.dart';
import 'icon_fav.dart';

class ColumnNavigator extends StatelessWidget {
  const ColumnNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(height: 30),
        Container(
            width: 50,
            height: 55,
            alignment: Alignment.center,
            child: const IconFav()),
        Container(
          width: 50,
          height: 55,
          alignment: Alignment.center,
          child: const Icon(
            Icons.comment_outlined,
            size: 35,
          ),
        ),
        Container(
            width: 50,
            height: 55,
            alignment: Alignment.center,
            child: const IconGuardar()),
        Container(
          width: 50,
          height: 55,
          alignment: Alignment.center,
          child: const Icon(
            Icons.save_alt,
            size: 35,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
