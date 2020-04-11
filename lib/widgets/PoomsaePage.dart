import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'NavDrawer.dart';

class PoonsaePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: CustomAppBar(),
      body: PoomsaeBodyWidget(),
    );
  }
}

class PoomsaeBodyWidget extends StatefulWidget {
  PoomsaeBodyWidget({Key key}) : super(key: key);

  @override
  _PoomsaeBodyWidgetState createState() => _PoomsaeBodyWidgetState();
}

class _PoomsaeBodyWidgetState extends State<PoomsaeBodyWidget> {
  List<Item> _data = generatePoomsaeList();
   
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generatePoomsaeList() {
  return [
    Item(
        headerValue: 'Taeguk Il Jang',
        expandedValue: 'Videozin'
    ),
    Item(
        headerValue: 'Taeguk Yi Jang',
        expandedValue: 'Videozin'
    ),
    Item(
        headerValue: 'Taeguk Sam Jang',
        expandedValue: 'Videozin'
    ),
    Item(
        headerValue: 'Taeguk Sa Jang',
        expandedValue: 'Videozin'
    ),
    Item(
        headerValue: 'Taeguk Oh Jang',
        expandedValue: 'Videozin'
    ),
    Item(
        headerValue: 'Taeguk Yook Jang',
        expandedValue: 'Videozin'
    ),
    Item(
        headerValue: 'Taeguk Chil Jang',
        expandedValue: 'Videozin'
    ),
    Item(
        headerValue: 'Taeguk Pal Jang',
        expandedValue: 'Videozin'
    ),
  ];
}
