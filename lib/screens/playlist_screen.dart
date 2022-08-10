import 'package:flutter/material.dart';
import 'package:resonance/model/data.dart';
import 'package:resonance/widgets/bottomPlayer.dart';

class PlayListScreen extends StatefulWidget {
  const PlayListScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PlayListScreen> createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        persistentFooterButtons: [bottomPlayer(context)],
        backgroundColor: Colors.black,
        body: NestedScrollView(
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              backgroundColor: Colors.black,
              pinned: true,
              floating: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsetsDirectional.only(start: 50, bottom: 16),
                // centerTitle: true,
                title: Text('Top Indie Playlist'),
                background: Image.asset(
                  'assets/images/album2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding:
                      EdgeInsets.only(left: 15, top: 15, bottom: 5, right: 40),
                  child: Row(children: [
                    Text('Popular',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    Spacer(),
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child:
                            Icon(Icons.shuffle, color: Colors.black, size: 25))
                  ])),
              ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) => ListTile(
                  leading: Image.asset(i10[index]),
                  title: Text(playlist[index],
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  subtitle: Text(browseAll[index],
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40, bottom: 10),
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
                child: ListView.builder(
                  itemCount: artist.length,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayListScreen()));
                          },
                          // curved container card
                          child: Container(
                            height: 170,
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.fromLTRB(15, 0, 5, 10),
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(artist[index])),
                            ),
                          ),
                        ),
                        Container(
                          width: 170,
                          padding: EdgeInsets.only(left: 18),
                          child: Text(
                            artname[index],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ]),

                  // sharp container card
                ),
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: Text('Most liked songs',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600)),
                ),
              ]),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                height: 240.0,
                child: ListView.builder(
                  itemCount: artists.length,
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayListScreen()));
                          },
                          child: Container(
                            height: 170,
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.fromLTRB(15, 0, 5, 10),
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(0),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(artists[index])),
                            ),
                          ),
                        ),
                        Container(
                          width: 170,
                          padding: EdgeInsets.only(left: 18),
                          child: Text(
                            artnames[index],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ]),
                ),
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: Text('Most Played Artists',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600)),
                ),
              ]),
              Container(
                height: 250.0,
                child: ListView.builder(
                  itemCount: artist.length,
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlayListScreen()));
                    },
                    child: Column(children: [
                      // circle container card for artists
                      Container(
                          height: 222,
                          width: 175,
                          // color: Colors.blue,
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage(artist[index]),
                          )),
                      Container(
                        // padding: const EdgeInsets.symmetric(horizontal: 0),
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          artname[index],
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 10),
                child: Text('About',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    child: Image.asset(
                      'assets/images/girl.jpg',
                      fit: BoxFit.fill,
                    ),
                    height: 300,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                    'The child Krishna was adored for his mischievous pranks; he also performed many miracles and slew demons. As a youth, the cowherd Krishna became renowned as a lover, the sound of his flute prompting the gopis (wives and daughters of the cowherds) to leave their homes to dance ecstatically with him in the moonlight. His favourite among them was the beautiful Radha.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300)),
              ),
              SizedBox(
                height: 16,
              ),
            ]),
          ),
        ));
  }
}
