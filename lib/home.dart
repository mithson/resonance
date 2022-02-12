import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: ListView(physics: ClampingScrollPhysics(), children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 40),
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
                      padding: EdgeInsets.only(right: 23, top: 50),
                      child: Icon(Icons.notifications_none_sharp,
                          color: Colors.white, size: 28)),
                  Padding(
                      padding: EdgeInsets.only(right: 23, top: 50),
                      child: Icon(Icons.history_sharp,
                          color: Colors.white, size: 28)),
                  Padding(
                      padding: EdgeInsets.only(right: 15, top: 50),
                      child: Icon(Icons.settings_outlined,
                          color: Colors.white, size: 28)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(children: [
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
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 2.5,
                      margin: EdgeInsets.only(
                        right: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5), // radius of 10
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
                              size: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Liked Songs',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ]),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 40, bottom: 20),
                  child: Row(children: [
                    Text('Your Top Mixes',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600)),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  height: 220.0,
                  child: ListView(
                    physics: ClampingScrollPhysics(),
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              // curved container card
                              child: Container(
                                height: 170,
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/album8.jpg')),
                                ),
                              ),
                            ),
                            Container(
                              width: 170,
                              padding: EdgeInsets.only(left: 18),
                              child: Expanded(
                                  child: Text(
                                'Cigarettes After Sex Cigarettes After Cigarettes After',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ]),
                      Container(
                          width: 160.0,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/album3.jpg'),
                          )),
                      // sharp container card
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 170,
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/album7.jpg')),
                                ),
                              ),
                            ),
                            Container(
                              width: 170,
                              padding: EdgeInsets.only(left: 18),
                              child: Expanded(
                                  child: Text(
                                '50 Cent ',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ]),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 20,
                  ),
                  child: Row(children: [
                    Text('Most liked songs',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600)),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  height: 240.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    children: <Widget>[
                      Column(children: [
                        // circle container card for artists
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            height: 200.0,
                            width: 160.0,
                            // color: Colors.blue,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/images/album3.jpg'),
                            )),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            'Arjit Singh meArjit Singh anylong nameSingh anylong name',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ]),
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          width: 160.0,
                          // color: Colors.blue,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/album3.jpg'),
                          )),
                    ],
                  ),
                )
              ]),
            ],
          ),
        ]),
      ),
    );
  }
}
