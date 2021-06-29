import 'package:flutter/material.dart';
import 'package:news_app/components/drawer/drawer_header.dart';


class DrawerMenu extends StatelessWidget {
  final String username;
  const DrawerMenu({Key? key, required this.username}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;

    return  Expanded(
      child: ListView(
        children: [
          DrawerUserHeader(username: username),
          ListTile(
            title: Text(
              'Home',
              style: Theme.of(context).textTheme.headline6,
            ),
            onTap: () {},
            minVerticalPadding: 1.0,
          ),
          ListTile(
            title: Text(
              'Reading List',
              style: Theme.of(context).textTheme.headline6,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Interests',
              style: Theme.of(context).textTheme.headline6,
            ),
            onTap: () {},
          ),
          // const SizedBox(
          //   height: 30.0,
          // ),
           Divider(
            height: 30,
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: darkModeOn ? Colors.white : Colors.black54,
          ),
          ListTile(
            title: Text(
              'New article',
              style: Theme.of(context).textTheme.headline6,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
