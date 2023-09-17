import 'package:buttons/layout/main_layout.dart';
import 'package:buttons/screen/route_two_screen.dart';
import 'package:flutter/material.dart';

class RouteOneScreen extends StatelessWidget {
  final int? num;

  const RouteOneScreen({this.num, super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(children: [
      Text(
        num.toString(),
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop(456);
        },
        child: Text('Pop'),
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => RouteTwoScreen(),
                settings: RouteSettings(
                  arguments: 789,
                )));
          },
          child: Text('push'))
    ], title: 'Route One');
  }
}
