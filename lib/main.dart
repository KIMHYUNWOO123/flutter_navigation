import 'package:buttons/screen/home_screen.dart';
import 'package:buttons/screen/route_one_screen.dart';
import 'package:buttons/screen/route_three_screen.dart';
import 'package:buttons/screen/route_two_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    // home: HomeScreen(),
    routes: {
      '/': (context) => HomeScreen(),
      '/one': (context) => RouteOneScreen(),
      '/two': (context) => RouteTwoScreen(),
      '/three': (context) => RouteThreeScreen(),
    },
  ));
}
