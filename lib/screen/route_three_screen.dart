import 'package:buttons/layout/main_layout.dart';
import 'package:flutter/material.dart';

class RouteThreeScreen extends StatelessWidget {
  const RouteThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(children: [
      Text(
        'argument: ${argument}',
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop'))
    ], title: 'Route Three');
  }
}
