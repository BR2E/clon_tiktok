import 'package:flutter/material.dart';
import '../../Core/api_inicio.dart';

class PageScroll extends StatefulWidget {
  const PageScroll({super.key});

  @override
  State<PageScroll> createState() => _PageScrollState();
}

class _PageScrollState extends State<PageScroll> {
  final _controller = PageController();
  // final datosApi = apiInicio.map((key, value) => )

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: _controller,
      children: [
        // Container(
        //   color: Colors.black,
        //   child: Image.network(getImagenes().toString()),
        // ),
        // Container(
        //   color: Colors.black,
        //   child: Image.network(apiInicio['url'][1]),
        // ),
        // Container(
        //   color: Colors.black,
        //   child: Image.network(apiInicio['url'][2]),
        // ),
      ],
    );
  }
}
