import 'package:flutter/material.dart';
import 'package:resonance/screens/home.dart';
import 'dart:ui';
import 'package:resonance/screens/library.dart';
import 'package:resonance/screens/playlist_screen.dart';
import 'package:resonance/screens/search.dart';
import 'package:resonance/widgets/bottomPlayer.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
    Library(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      persistentFooterButtons: [bottomPlayer(context)],
      bottomNavigationBar: customBottomNavBar(_selectedIndex, _onItemTapped),
    );
  }
}

//  Navigator(
//         onGenerateRoute: (settings) {
//           Widget tab1 = Home(); // page - tab1
//           Widget tab2 = Search();
//           Widget tab3 = Library();

//           if (settings.name == 'home') tab1 = Home();
//           return MaterialPageRoute(builder: (_) => tab1);
//           if (settings.name == 'search') tab2 = Search();
//           return MaterialPageRoute(builder: (_) => tab2);
//           if (settings.name == 'library') tab3 = Library();
//           return MaterialPageRoute(builder: (_) => tab3);
//         },
//       ),