import 'package:flutter/material.dart';
import 'package:taekwondoguide/widgets/app_bar.dart';
import 'package:taekwondoguide/widgets/nav_drawer.dart';

abstract class AbstractStructure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: CustomAppBar(),
      body: buildPageBody(context),
    );
  }

  Widget buildPageBody(BuildContext context);
}