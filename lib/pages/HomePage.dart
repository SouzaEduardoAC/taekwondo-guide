import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handoryu/widgets/CustomAppBar.dart';
import 'package:handoryu/widgets/NavDrawer.dart';

class HomePage extends StatelessWidget {

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