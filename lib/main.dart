import 'package:flutter/material.dart';
import 'package:resonance/screens/artists.dart';
import 'package:resonance/screens/lang.dart';
import 'package:resonance/screens/playlist_screen.dart';
import 'package:resonance/widgets/bottom_nav_bar.dart';
import 'package:resonance/screens/email.dart';

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
      home: const PlayListScreen(),
    );
  }
}
