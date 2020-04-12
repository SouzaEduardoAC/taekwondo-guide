import 'package:flutter/material.dart';
import 'package:handoryu/widgets/BalKiSulPage.dart';
import 'package:handoryu/widgets/HomePage.dart';
import 'package:handoryu/widgets/MaengsePage.dart';
import 'package:handoryu/widgets/PoomsaePage.dart';
import 'package:handoryu/widgets/SonKiSulPage.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          _buildListTile(context, Icons.home, 'Home', new HomePage()),
          _buildListTile(context, Icons.format_strikethrough, 'Bal ki sul', new BalKiSulPage()),
          _buildListTile(context, Icons.format_strikethrough, 'Son ki sul', new SonKiSulPage()),
          _buildListTile(context, Icons.format_list_numbered, 'Poomsae', new PoomsaePage()),
          _buildListTile(context, Icons.local_library, 'Maengse', new MaengsePage())
        ],
      ),
    );
  }

  ListTile _buildListTile(context, icon, title, page) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: TextStyle(fontSize: 18)),
      onTap: () {
        Navigator.of(context).pop();
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => page)
        );
      }
    );
  }
}
