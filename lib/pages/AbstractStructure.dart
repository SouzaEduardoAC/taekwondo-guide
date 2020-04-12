import 'package:flutter/material.dart';

import '../widgets/CustomAppBar.dart';
import '../widgets/NavDrawer.dart';

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