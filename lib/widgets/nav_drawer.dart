import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/bal_ki_sul.dart';
import 'package:taekwondoguide/pages/home.dart';
import 'package:taekwondoguide/pages/maengse.dart';
import 'package:taekwondoguide/pages/poomsae.dart';
import 'package:taekwondoguide/pages/son_ki_sul.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          _buildListTile(context, Icons.home, 'Home', new Home()),
          _buildListTile(context, Icons.format_strikethrough, 'Bal ki sul', new BalKiSul()),
          _buildListTile(context, Icons.format_strikethrough, 'Son ki sul', new SonKiSul()),
          _buildListTile(context, Icons.format_list_numbered, 'Poomsae', new Poomsae()),
          _buildListTile(context, Icons.local_library, 'Maengse', new Maengse()),
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
