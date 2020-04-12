import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardBiggerFont extends StatelessWidget {
  final _biggerFont = const TextStyle(fontSize: 18.0);
  String _text;

  CardBiggerFont(this._text);

  @override
  Widget build(BuildContext context) =>
    Card(child: ListTile(title: Text(_text, style: _biggerFont)));
}