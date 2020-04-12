import 'package:flutter/material.dart';
import 'package:handoryu/main.dart';
import 'package:handoryu/widgets/PoomsaePage.dart';

import 'MaengsePage.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Home', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context) => new HomePage()
                    )
                );
              }
          ),
          ListTile(
            leading: Icon(Icons.format_strikethrough),
            title: Text('Son ki sul', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => new HomePage()
                )
              );
            }
          ),
          ListTile(
            leading: Icon(Icons.format_strikethrough),
            title: Text('Bal ki sul', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context) => new HomePage()
                    )
                );
              }
          ),
          ListTile(
            leading: Icon(Icons.format_list_numbered),
            title: Text('Poomsae', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => new PoomsaePage()
                )
              );
            }
          ),
          ListTile(
              leading: Icon(Icons.local_library),
              title: Text('Maengse', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => new MaengsePage()
                  )
                );
              }
          )
        ],
      ),
    );
  }
}