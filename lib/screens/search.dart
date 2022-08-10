import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resonance/model/data.dart';
import 'package:resonance/screens/playlist_screen.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 25),
              child: Text(
                "Search",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(right: 25, left: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.white),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search,
                    size: 33,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Artist , songs or podcasts",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text('Your top genres',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) => ItemTile(
                    context,
                    topGenres[index],
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                    image[index]),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.8666,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text('Browse all',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 120),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: browseAll
                    .length, // 10 hona chahiye it is handled from data.dart file jitna wo hoga yaha bhi utna aana chahiye
                itemBuilder: (context, index) => ItemTile(
                    context,
                    browseAll[index],
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                    i10[index]),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.8666,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ItemTile(
      BuildContext context, String text, Color color, String image) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => PlayListScreen())),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: Container(
          height: 180,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade900,
                    offset: const Offset(1, 1),
                    spreadRadius: 1,
                    blurRadius: 50,
                    blurStyle: BlurStyle.outer),
              ]),
          child: Stack(
            children: [
              const SizedBox(
                width: 175,
                height: 100,
              ),
              Positioned(
                bottom: 5,
                right: -15,
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(385 / 360),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: kElevationToShadow[2],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                child: Text(text,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
