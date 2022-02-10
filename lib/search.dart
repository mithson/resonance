import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  borderRadius: BorderRadius.circular(2), color: Colors.white),
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
                      fontSize: 15)),
            ),
            SizedBox(
              height: 5,
            ),
            smalltile(context, "Tamil  ", Colors.red, "English", Colors.green,
                "assets/images/album1.jpg", "assets/images/album2.jpg"),
            SizedBox(
              height: 10,
            ),
            smalltile(
                context,
                "Punjabi",
                Colors.orange,
                "English",
                Colors.yellow,
                "assets/images/album4.jpg",
                "assets/images/album3.jpg"),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text('Browse all',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
            ),
            SizedBox(
              height: 5,
            ),
            smalltile(context, "Tamil  ", Colors.red, "English", Colors.green,
                "assets/images/album1.jpg", "assets/images/album2.jpg"),
            smalltile(
                context,
                "Telugu",
                Colors.purple,
                "English",
                Colors.blueAccent,
                "assets/images/album6.jpg",
                "assets/images/album5.jpg"),
          ],
        ),
      ),
    );
  }

  Row smalltile(BuildContext context, String text, final clrs, String text2,
      final clrs2, String imgurl1, String imgurl2) {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 85,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 10, left: 25, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: clrs,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 10, left: 8),
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  transform: new Matrix4.identity()
                    ..rotateZ(15 * 3.1415927 / -160),
                  child: Image.asset(
                    imgurl1,
                    height: 60,
                    width: 75,
                  ),
                ),
              )
            ],
          ),
        )),
        Expanded(
            child: Container(
          height: 85,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 10, left: 25, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: clrs2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 10, left: 8),
                child: Text(
                  text2,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  transform: new Matrix4.identity()
                    ..rotateZ(15 * 3.1415927 / -160),
                  child: Image.asset(
                    imgurl2,
                    height: 60,
                    width: 75,
                  ),
                ),
              )
            ],
          ),
        )),
      ],
    );
  }
}
