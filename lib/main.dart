import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/Home.dart';

void main() => runApp(_TaekwondoGuide());

class _TaekwondoGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taekwondo Guide',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
