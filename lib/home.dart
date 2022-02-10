import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.deepPurple,
                Colors.black,
                Colors.black,
                Colors.black,
                Colors.black
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 25),
                    child: Text(
                      "Recently Played",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 23, top: 25),
                      child: Icon(Icons.notifications_none_sharp,
                          color: Colors.white, size: 25)),
                  Padding(
                      padding: EdgeInsets.only(right: 23, top: 25),
                      child: Icon(Icons.history_sharp,
                          color: Colors.white, size: 25)),
                  Padding(
                      padding: EdgeInsets.only(right: 15, top: 25),
                      child: Icon(Icons.settings_outlined,
                          color: Colors.white, size: 25)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
