import 'package:flutter/material.dart';
import 'package:resonance/data.dart';

class PlayListScreen extends StatelessWidget {
  const PlayListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: NestedScrollView(
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              backgroundColor: Colors.black,
              pinned: true,
              floating: true,
              // snap: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsetsDirectional.only(start: 40, bottom: 16),
                // centerTitle: true,
                title: Text('freaking awesome'),
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
                  leading: Image.network('https://picsum.photos/250?image=9'),
                  title: Text(browseAll[index],
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
                        Icons.favorite,
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
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 30, bottom: 10),
                  child: Text('Most Played Artists',
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
                  itemCount: title.length,
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
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
                                  image: AssetImage(image[index])),
                            ),
                          ),
                        ),
                        Container(
                          width: 170,
                          padding: EdgeInsets.only(left: 18),
                          child: Text(
                            title[index],
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
                  padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
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
                  itemCount: title.length,
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) => Column(children: [
                    // circle container card for artists
                    Container(
                        height: 222,
                        width: 175,
                        // color: Colors.blue,
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(image[index]),
                        )),
                    Container(
                      // padding: const EdgeInsets.symmetric(horizontal: 0),
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        title[index],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ]),
                ),
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 20, top: 30),
                  child: Text('Most Played Artists',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600)),
                ),
              ]),
              Container(
                margin: const EdgeInsets.only(top: 15),
                height: 240.0,
                child: ListView.builder(
                  itemCount: title.length,
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
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
                                  image: AssetImage(image[index])),
                            ),
                          ),
                        ),
                        Container(
                          width: 170,
                          padding: EdgeInsets.only(left: 18),
                          child: Text(
                            title[index],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ]),
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
                    child: Image.network(
                      'https://picsum.photos/250?image=9',
                      fit: BoxFit.fill,
                    ),
                    height: 300,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ]),
          ),
        ));
  }
}
