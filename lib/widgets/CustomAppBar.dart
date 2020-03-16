import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  @override
  Widget get title => Text('The Taekwondo Guide');

  @override
  Widget get flexibleSpace => Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: <Color>[
          Colors.blue,
          Colors.red
        ],
      ),
    ),
  );
}