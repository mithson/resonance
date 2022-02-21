// single gridView = bolly + holly + ...
// bolly k starting k 5 only and so on
// onclick of gridView it should show more 5 from respective genre
// List a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
// List b = a.sublist(4,6);
// print(b);

import 'package:flutter/material.dart';
import 'package:resonance/data.dart';
import 'package:resonance/widgets/bottom_nav_bar.dart';

class Artists extends StatefulWidget {
  const Artists({Key? key}) : super(key: key);

  @override
  State<Artists> createState() => _ArtistsState();
}

class _ArtistsState extends State<Artists> {
  List<String> selectedList = [];

  late var all = a1 + a2;
  // List b = a.sublist(4, 6);

  @override
  Widget build(BuildContext context) {
    // print(all); // init errors goes if we use it here
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Text('Choose 5 or more artits \nyou like?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  )),
            ),
            backgroundColor: Colors.black,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Visibility(
          visible: !selectedList.isEmpty,
          child: FloatingActionButton.extended(
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomNavBar()));
            },
            label: Text(
              'Done',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: GridView.builder(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              if (selectedList.contains(a2[index])) {
                setState(() {
                  selectedList.removeWhere((val) => val == a2[index]);
                  print(selectedList);
                });
              } else {
                setState(() {
                  selectedList.add(a2[index]);
                  print(selectedList);
                });
              }
            },
            child: Stack(children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        // padding: EdgeInsets.only(top: 5),
                        height: 150,
                        child: CircleAvatar(
                          backgroundImage:
                              const AssetImage('assets/images/album8.jpg'),
                          radius: 70,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      a2[index],
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),

                    // circle container card for a2
                  ]),
              Visibility(
                  visible: selectedList.contains(a2[index]),
                  child: Positioned(
                      top: 6,
                      right: 10,
                      child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.check, color: Colors.black)))),
            ]),
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              // childAspectRatio: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 10),
        ),
      ),
    );
  }
}
