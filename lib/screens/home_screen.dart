import 'package:flutter/material.dart';
import 'package:news_app/components/drawer/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isNotification = false;

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
        backgroundColor: darkModeOn ? Colors.black : Colors.white, // status bar color
        brightness: darkModeOn ? Brightness.dark : Brightness.light,
        iconTheme: IconThemeData(color: darkModeOn ? Colors.white : Colors.black),
        title: Text(widget.title,
            style: Theme.of(context).appBarTheme.titleTextStyle),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(!_isNotification
                ? Icons.notifications_none_outlined
                : Icons.notifications_active),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_sharp),
          ),
        ],
      ),
      drawer: const AppDrawerMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_isNotification',
              style: Theme.of(context).textTheme.headline4,
            ),
            IconButton(
              color: Colors.deepPurple,
              enableFeedback: true,
              onPressed: () => _decrementCounter(),
              icon: const Icon(Icons.remove),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), //
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
