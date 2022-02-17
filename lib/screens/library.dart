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
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
              excludeHeaderSemantics: true,
              floating: true,
              pinned: true,
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
                padding: EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/album3.jpg'),
                ),
              ),
              title: Text('Your Library'),
              backgroundColor: Colors.black,
            ),
            SliverPersistentHeader(
              floating: true,
              delegate: PersistentHeader(
                widget: Row(
                  // Format this to meet your need
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[],
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 10,
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
              tile("Liked Songs", "assets/images/album1.jpg",
                  "Playlist 52 Songs"),
              tile("On Repeat", "assets/images/album2.jpg", "Playlist for u"),
              tile("Malayalam", "assets/images/album3.jpg", "Malayalam List"),
              tile("On Repeat", "assets/images/album6.jpg", "Playlist for u"),
              tile("Malayalam", "assets/images/album7.jpg", "Malayalam List"),
              tile("Weekly Discover", "assets/images/album8.jpg",
                  "Weekly discover"),
              tile("Liked Songs", "assets/images/album9.jpg",
                  "Playlist 52 Songs"),
              tile("Liked Songs", "assets/images/album1.jpg",
                  "Playlist 52 Songs"),
              tile("On Repeat", "assets/images/album2.jpg", "Playlist for u"),
              tile("Malayalam", "assets/images/album3.jpg", "Malayalam List"),
              tile("Weekly Discover", "assets/images/album4.jpg",
                  "Weekly discover"),
              tile("Weekly Discover", "assets/images/album4.jpg",
                  "Weekly discover"),
              tile("Liked Songs", "assets/images/album5.jpg",
                  "Playlist 52 Songs"),
              tile("On Repeat", "assets/images/album6.jpg", "Playlist for u"),
              tile("Malayalam", "assets/images/album7.jpg", "Malayalam List"),
              tile("Weekly Discover", "assets/images/album8.jpg",
                  "Weekly discover"),
              tile("Liked Songs", "assets/images/album9.jpg",
                  "Playlist 52 Songs"),
              tile("Liked Songs", "assets/images/album1.jpg",
                  "Playlist 52 Songs"),
              tile("On Repeat", "assets/images/album2.jpg", "Playlist for u"),
              tile("Malayalam", "assets/images/album3.jpg", "Malayalam List"),
              tile("Weekly Discover", "assets/images/album4.jpg",
                  "Weekly discover"),
              SizedBox(
                height: 115,
              )
            ],
          ),
        ),
      ),
    );
  }
}

ListTile tile(String title, String imgurl, String subtit) {
  return ListTile(
    leading: GestureDetector(
      onTap: () {},
      child: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(imgurl),
      ),
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

class PersistentHeader extends SliverPersistentHeaderDelegate {
  final Widget widget;
  var list = [
    'Playlists',
    "Artists",
    "Albums",
    "Podcasts",
  ];

  PersistentHeader({required this.widget});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Row(
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
                print(item);
              },
            ),
          ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }

  @override
  double get maxExtent => 45;

  @override
  double get minExtent => 45;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
