import 'package:flutter/material.dart';

const imgSrc =
    'https://pbs.twimg.com/profile_images/1242969566193606656/sHY7uihz_400x400.jpg';

class DrawerUserHeader extends StatelessWidget {
  final String username;
  const DrawerUserHeader({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;

    return DrawerHeader(
      decoration: BoxDecoration(
        color: darkModeOn ? Colors.black : Colors.white,
      ),
      padding: const EdgeInsets.only(top: 3, bottom: 0, left: 15, right: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Image.network(
                  imgSrc,
                  fit: BoxFit.fill,
                  width: 80,
                  height: 80,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                username,
                style: Theme.of(context).textTheme.headline4,
              ),
              TextButton(
                child: Text(
                  'View profile',
                  style: Theme.of(context).textTheme.caption,
                ),
                onPressed: () {},
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 0.0),
                    alignment: Alignment.centerLeft),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
