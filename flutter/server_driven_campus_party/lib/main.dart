import 'package:flutter/material.dart';
import 'package:server_driven_campus_party/fakeflix/presentation/home_screen.dart';

import 'fakeflix/presentation/home_controller.dart';

void main() {
  runApp(const ServerDrivenApp());
}

class ServerDrivenApp extends StatelessWidget {
  const ServerDrivenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeController(),
    );
  }
}


class DumontHackerSpace extends StatelessWidget {
  const DumontHackerSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('resources/dumont_hackerspace.jpg'),
          const Text(
            'na Campus Party 2022',
            style: TextStyle(fontSize: 24.0),
          )
        ],
      ),
    );
  }
}
