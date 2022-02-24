import 'package:flutter/material.dart';
import 'package:resonance/screens/player.dart';
import 'package:resonance/screens/playlist_screen.dart';

Widget bottomPlayer(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.purple.shade700,
    ),
    child: Column(children: [
      ListTile(
        leading: Image.asset('assets/images/girl.jpg'),
        title: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PlayListScreen()));
          },
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlayListScreen()));
            },
            child: Text('browseAll[index]',
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
        subtitle: Text('browseAll[index]',
            style: TextStyle(
              color: Colors.white,
            )),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.list,
              color: Colors.white,
              size: 33,
            ),
            SizedBox(width: 13),
            Icon(
              Icons.favorite_outline_rounded,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Player()));
              },
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
      LinearProgressIndicator(
        value: 3,
        color: Colors.white,
      )
    ]),
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
