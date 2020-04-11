import 'package:flutter/material.dart';
import 'package:handoryu/main.dart';
import 'package:handoryu/widgets/PoomsaePage.dart';
import 'package:handoryu/widgets/VideoPlayer.dart';

import 'MaengsePage.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Taekwondo',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/Taekwondo-Korea-Martial-Arts.png'),
                alignment: Alignment.bottomCenter)),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 18),),
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
            title: Text(
              'Son ki sul',
              style: TextStyle(fontSize: 18),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => new VideoPlayerScreen()
                )
              );
            }
          ),
          ListTile(
            leading: Icon(Icons.format_strikethrough),
            title: Text(
                'Bal ki sul',
                style: TextStyle(fontSize: 18)
            ),
            onTap: () => { }
          ),
          ListTile(
            leading: Icon(Icons.format_list_numbered),
            title: Text(
                'Poomsae',
                style: TextStyle(fontSize: 18)
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => new PoonsaePage()
                )
              );
            }
          ),
          ListTile(
              leading: Icon(Icons.local_library),
              title: Text(
                  'Maengse',
                  style: TextStyle(fontSize: 18)
              ),
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