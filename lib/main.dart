import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/home.dart';

void main() => runApp(TaekwondoGuide());

class TaekwondoGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taekwondo Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
