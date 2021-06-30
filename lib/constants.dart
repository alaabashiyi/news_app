import 'package:flutter/material.dart';

final ThemeData kLightTheme = ThemeData(
  primarySwatch: Colors.deepPurple,
  accentColor: Colors.amber,
  primaryColorDark: Colors.grey[300],
  fontFamily: 'Quicksand',
  textTheme: ThemeData.light().textTheme.copyWith(
        headline6: const TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: Colors.black54),
        headline5: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 18.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        headline4: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 14.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        button: const TextStyle(color: Colors.white),
        caption: const TextStyle(color: Colors.black54, fontSize: 12.0),
      ),
  appBarTheme: AppBarTheme(
      textTheme: ThemeData.light().textTheme.copyWith(),
      titleTextStyle: const TextStyle(
        fontFamily: 'OpenSans',
        fontSize: 18.0,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
      color: Colors.black),
);

final ThemeData kDarkTheme = ThemeData(
  primarySwatch: Colors.amber,
  iconTheme: const IconThemeData(color: Colors.white),
  accentColor: Colors.amber,
  fontFamily: 'Quicksand',
  textTheme: ThemeData.dark().textTheme.copyWith(
        headline6: const TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        headline5: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 18.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        headline4: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 12.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        button: const TextStyle(color: Colors.white),
        caption: const TextStyle(color: Colors.white60, fontSize: 12.0),
      ),
  appBarTheme: AppBarTheme(
      textTheme: ThemeData.light().textTheme.copyWith(),
      titleTextStyle: const TextStyle(
        fontFamily: 'OpenSans',
        fontSize: 18.0,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
      color: Colors.black),
);
