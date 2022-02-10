import 'package:flutter/material.dart';
import 'package:resonance/bottom_nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
