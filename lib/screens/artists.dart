// single gridView = bolly + holly + ...
// bolly k starting k 5 only and so on
// onclick of gridView it should show more 5 from respective genre
// List a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
// List b = a.sublist(4,6);
// print(b);

import 'package:flutter/material.dart';

class ArtistsScreen extends StatelessWidget {
  const ArtistsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBar(
            flexibleSpace: Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Text('Choose 5 or more artits \nyou like?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  )),
            ),
            backgroundColor: Colors.black,
            title: Text(''),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text(
            'Done',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [
              Column(children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 120),
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 50,
                    itemBuilder: (context, index) => ItemTile(context, 'Freaks',
                        Colors.purple, 'https://picsum.photos/250?image=9'),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5),
                  ),
                ),
              ]),
            ]),
      ),
    );
  }
}

Widget ItemTile(BuildContext context, String text, Color color, String image) {
  return Column(children: [
    CircleAvatar(
      radius: 30.0,
      backgroundImage: NetworkImage('https://unsplash.com/photos/Z_bTArFy6ks'),
      backgroundColor: Colors.red,
    ),
    Text('abhi'),
  ]);
}
