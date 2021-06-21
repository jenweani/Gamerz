import 'package:flutter/material.dart';
import 'package:gaming_app/dashboard/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gamerz',
      home: Dashboard(),
    );
  }
}
