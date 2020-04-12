import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/AbstractStructure.dart';

class Home extends AbstractStructure {
  @override
  Widget buildPageBody(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            backgroundBlendMode: BlendMode.overlay,
            image: DecorationImage(
              image: AssetImage('assets/images/korea_taekwondo_flag.png'),
              fit: BoxFit.scaleDown,
            )
        )
    );
  }
}