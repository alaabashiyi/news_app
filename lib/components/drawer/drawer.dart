import 'package:flutter/material.dart';
import 'package:news_app/components/drawer/drawer_bottom.dart';
import 'package:news_app/components/drawer/drawer_menu.dart';

class AppDrawerMenu extends StatelessWidget {
  const AppDrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    Color? menuBackgroundColor =
        darkModeOn ? Colors.brown[900] : Colors.grey[300];

    return Drawer(
      child: Container(
        color: menuBackgroundColor,
        child: Column(
          children: <Widget>[
            DrawerMenu(
              username: 'Alaa Bash',
              color: menuBackgroundColor,
            ),
            DrawerBottom(),
          ],
        ),
      ),
    );
  }
}
