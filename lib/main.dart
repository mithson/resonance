import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:resonance/screens/player.dart';
import 'package:resonance/widgets/bottom_nav_bar.dart';
import 'package:resonance/screens/email.dart';
// import 'package:resonance/screens/artists.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.black87),
      ),
      debugShowCheckedModeBanner: false,
      home: Email(),
    );
  }
}
