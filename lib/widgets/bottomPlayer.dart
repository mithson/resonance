import 'package:flutter/material.dart';
import 'package:resonance/screens/player.dart';
import 'package:resonance/screens/playlist_screen.dart';

Widget bottomPlayer(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.deepPurple),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          iconSize: 35,
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Player()));
          },
        ),
        InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlayListScreen()));
            },
            child: Text("Some data over hereSome data ")),
        IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.list_sharp),
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
        )
      ],
    ),
  );
}

Widget customBottomNavBar(int _selectedIndex, _onItemTapped) {
  return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black87.withOpacity(0.1),
            Colors.black87,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.8],
          // tileMode: TileMode.clamp,
        ),
      ),
      child: BottomNavigationBar(
        
        type: BottomNavigationBarType.fixed,
        items: [
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
        unselectedItemColor: Colors.white60,
        backgroundColor: const Color(0x000000).withOpacity(0.7),
        onTap: _onItemTapped,
      ));
}
