import 'package:flutter/material.dart';
import 'package:resonance/home.dart';
import 'package:resonance/library.dart';
import 'package:resonance/search.dart';

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
      // appBar: AppBar(
      //   actions: const [],
      //   backgroundColor: Colors.purple,
      //   title: const Text('Howdy, User!'),
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //         colors: [Colors.purple, Colors.pink],
      //         begin: Alignment.bottomRight,
      //         end: Alignment.topLeft,
      //       ),
      //     ),
      //   ),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_music),
            label: 'Library',
          ),
        ],
        elevation: 0,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        backgroundColor: const Color(0x00ffffff),
        onTap: _onItemTapped,
      ),
    );
  }
}


//  Padding(
//               padding: EdgeInsets.only(right: 15),
//               child: Icon(Icons.notifications_none_sharp, size: 25)),
//           Padding(
//               padding: EdgeInsets.only(right: 15),
//               child: Icon(Icons.history_sharp, size: 25)),
//           Padding(
//               padding: EdgeInsets.only(right: 10),
//               child: Icon(Icons.settings_outlined, size: 25)),