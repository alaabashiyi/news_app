import 'package:flutter/material.dart';

class DrawerBottom extends StatelessWidget {
  const DrawerBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Align(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              child: Text(
                'Settings',
                style: Theme.of(context).textTheme.headline6,
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text(
                'Help',
                style: Theme.of(context).textTheme.headline6,
              ),
              onPressed: () {},
            ),
            const Icon(Icons.face_outlined),
          ],
        ),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
