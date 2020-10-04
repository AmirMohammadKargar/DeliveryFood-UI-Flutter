import 'package:flutter/material.dart';
import 'screens/home_screen/home_screen.dart';
import 'screens/details_screen/detail_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Body(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => DetailsScreen(),
      },
    ),
  );
}
