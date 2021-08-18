import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homeScreen.dart';

class FlutterTutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter tutorial",
      home: HomeScreen(),
    );
  }
}
