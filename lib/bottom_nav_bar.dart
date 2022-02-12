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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      persistentFooterButtons: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.purple),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 35,
                icon: Icon(Icons.play_arrow),
                onPressed: () {},
              ),
              Container(child: Text("Some data over hereSome data ")),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.list_sharp),
                onPressed: () {},
              )
            ],
          ),
        )
      ],
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
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: const Color(0x000000).withOpacity(0.6),
        onTap: _onItemTapped,
      ),
    );
  }
}

 // Container(
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   child: Text(
                        //     'Arjit Singh meArjit Singh anylong name',
                        //     // overflow: TextOverflow.ellipsis,
                        //     maxLines: 2,
                        //     textAlign: TextAlign.center,
                        //     style: TextStyle(color: Colors.white),
                        //   ),
                        // ),