import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/BalKiSul.dart';
import 'package:taekwondoguide/pages/Home.dart';
import 'package:taekwondoguide/pages/Maengse.dart';
import 'package:taekwondoguide/pages/Poomsae.dart';
import 'package:taekwondoguide/pages/SonKiSul.dart';
import 'package:taekwondoguide/pages/youtube_test_page.dart';

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
          _buildListTile(context, Icons.access_time, 'Youtube Test Page', new YoutubeTestPage())
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
