import 'package:buttons/layout/main_layout.dart';
import 'package:buttons/screen/route_one_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(children: [
      ElevatedButton(
        onPressed: () async {
          final result = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => RouteOneScreen(
                num: 123,
              ),
            ),
          );
        },
        child: Text('Push'),
      ),
    ], title: 'HomeScreen');
  }
}
