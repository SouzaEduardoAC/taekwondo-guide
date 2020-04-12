import 'package:flutter/material.dart';
import 'package:handoryu/pages/HomePage.dart';

void main() => runApp(TaekwondoApp());

class TaekwondoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taekwondo Guide',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
