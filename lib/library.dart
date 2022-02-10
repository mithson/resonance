import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              color: Colors.black45,
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        "N",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Your Library",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 105,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.white70,
                    size: 35,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white70,
                    size: 35,
                  )
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Colors.white)),
                  child: Text(
                    "Playlist",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Colors.white)),
                  child: Text(
                    "Artist",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Transform.rotate(
                  angle: 90 * pi / 180,
                  child: Icon(
                    Icons.compare_arrows_sharp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Recently Played",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  width: 170,
                ),
                Icon(
                  FontAwesomeIcons.listAlt,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            tile(
                "Liked Songs", "assets/images/album1.jpg", "Playlist 52 Songs"),
            tile("On Repeat", "assets/images/album2.jpg", "Playlist for u"),
            tile("Malayalam", "assets/images/album3.jpg", "Malayalam List"),
            tile("Weekly Discover", "assets/images/album4.jpg",
                "Weekly discover"),
            tile(
                "Liked Songs", "assets/images/album5.jpg", "Playlist 52 Songs"),
            tile("On Repeat", "assets/images/album6.jpg", "Playlist for u"),
            tile("Malayalam", "assets/images/album7.jpg", "Malayalam List"),
            tile("Weekly Discover", "assets/images/album8.jpg",
                "Weekly discover"),
            tile(
                "Liked Songs", "assets/images/album9.jpg", "Playlist 52 Songs"),
            tile(
                "Liked Songs", "assets/images/album1.jpg", "Playlist 52 Songs"),
            tile("On Repeat", "assets/images/album2.jpg", "Playlist for u"),
            tile("Malayalam", "assets/images/album3.jpg", "Malayalam List"),
            tile("Weekly Discover", "assets/images/album4.jpg",
                "Weekly discover"),
          ],
        ),
      ),
    );
  }

  ListTile tile(String title, String imgurl, String subtit) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(imgurl),
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic),
      ),
      subtitle: Text(
        subtit,
        style: TextStyle(
            color: Colors.white54, fontSize: 13, fontStyle: FontStyle.italic),
      ),
    );
  }
}
