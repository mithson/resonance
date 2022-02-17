import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  var list = ['Playlists', "Artists", "Albums", "Podcasts"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(45),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              for (var item in list)
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: FilterChip(
                    label: Text(
                      item,
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.black,
                    shape: StadiumBorder(side: BorderSide(color: Colors.white)),
                    onSelected: (bool value) {
                      print("selected");
                    },
                  ),
                ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ),
        actions: [
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            IconButton(
                onPressed: null,
                icon: Icon(FontAwesomeIcons.search,
                    size: 20, color: Colors.white)),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.add,
                size: 32,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ])
        ],
        leading: Padding(
          padding: EdgeInsets.only(left: 15),
          child: CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/images/album3.jpg'),
          ),
        ),
        title: Text('Your Library'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 145,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Transform.rotate(
                  angle: 90 * pi / 180,
                  child: Icon(
                    Icons.compare_arrows_sharp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Recently Played",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  width: 165,
                ),
                Icon(
                  Icons.grid_view,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 5,
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
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        subtit,
        style: TextStyle(
          color: Colors.white54,
          fontSize: 13,
        ),
      ),
    );
  }
}
