import 'package:flutter/material.dart';
import 'package:taekwondoguide/widgets/CustomAppBar.dart';
import 'package:taekwondoguide/widgets/NavDrawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: CustomAppBar(),
        body: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                backgroundBlendMode: BlendMode.overlay,
                image: DecorationImage(
                  image: AssetImage('assets/images/korea_taekwondo_flag.png'),
                  fit: BoxFit.scaleDown,
                )
            )
        )
    );
  }
}