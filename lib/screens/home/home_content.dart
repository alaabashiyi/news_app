import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_actions.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            Provider.of<HomeActions>(context).text,
            style: TextStyle(color: Colors.black),
          ),
          IconButton(
            color: Colors.deepPurple,
            enableFeedback: true,
            onPressed: (){},
            icon: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
