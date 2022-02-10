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
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Column(children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 2.5,
                          margin: EdgeInsets.only(
                            left: 15,
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(5), // radius of 10
                            color: const Color(0xFFFFFF).withOpacity(0.3),
                          ),
                          child: Row(children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5)),
                                child: Image.asset('assets/images/top50.jpg')),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text('Top 50',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ]),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 2.5,
                          margin: EdgeInsets.only(
                            right: 15,
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(5), // radius of 10
                            color: const Color(0xFFFFFF).withOpacity(0.3),
                          ),
                          child: Row(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              child: Container(
                                alignment: Alignment.center,
                                color: Colors.purple[500],
                                height: 60,
                                width: 60,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white70,
                                  size: 35,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text('Liked Songs',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ]),
                        ),
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
