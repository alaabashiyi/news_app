import 'package:flutter/material.dart';
import 'package:news_app/components/drawer/drawer.dart';
import 'package:news_app/screens/home/home_content.dart';
import 'package:provider/provider.dart';

import 'home_actions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isNotification = false;

  @override
  void initState() {
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _isNotification = true;
    });
  }

  void _decrementCounter() {
    setState(() {
      _isNotification = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            darkModeOn ? Colors.black : Colors.white, // status bar color
        brightness: darkModeOn ? Brightness.dark : Brightness.light,
        iconTheme:
            IconThemeData(color: darkModeOn ? Colors.white : Colors.black),
        title: Text(
          widget.title,
          style: Theme.of(context)
              .appBarTheme
              .titleTextStyle
              ?.copyWith(color: darkModeOn ? Colors.white : Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: _incrementCounter,
            icon: Icon(!_isNotification
                ? Icons.notifications_none_outlined
                : Icons.notifications_active),
          ),
          IconButton(
            onPressed: _decrementCounter,
            icon: const Icon(Icons.search_sharp),
          ),
        ],
      ),
      drawer: const AppDrawerMenu(),
      body: HomeContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<HomeActions>(context, listen: false).changeText('Elon must');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), //
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
