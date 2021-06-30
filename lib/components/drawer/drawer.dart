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
        darkModeOn ? const Color(0xff292929) : const Color(0xfff2f2f2);

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
