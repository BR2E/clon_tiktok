import 'package:flutter/material.dart';

class IconFav extends StatefulWidget {
  const IconFav({super.key});

  @override
  State<IconFav> createState() => _IconFavState();
}

class _IconFavState extends State<IconFav> {
  late bool iconState;

  @override
  void initState() {
    iconState = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          iconState == false ? iconState = true : iconState = false;
        });
      },
      icon: Icon(Icons.favorite,
          size: 35, color: iconState == true ? Colors.red : Colors.white),
    );
  }
}

class IconGuardar extends StatefulWidget {
  const IconGuardar({super.key});

  @override
  State<IconGuardar> createState() => _IconGuardarState();
}

class _IconGuardarState extends State<IconGuardar> {
  late bool iconGuardarStado;

  @override
  void initState() {
    iconGuardarStado = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            iconGuardarStado
                ? iconGuardarStado = false
                : iconGuardarStado = true;
          });
        },
        icon: Icon(
          Icons.save,
          size: 35,
          color: iconGuardarStado ? Colors.yellow : Colors.white,
        ));
  }
}
