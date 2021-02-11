import 'package:flutter/material.dart';
import 'locator.dart';
import 'view/home_screen.dart';




void main() {
  /// [4. Call the setup method to initialize the services]
  setup();

  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GET IT',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
