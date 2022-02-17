import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resonance/widgets/bottom_nav_bar.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  List<Widget> slides = items
      .map((item) => Container(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Image.asset(
                  item['image'],
                  fit: BoxFit.fitWidth,
                  width: 220.0,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: <Widget>[
                      Text(item['header'],
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0XFF3F3D56),
                              height: 2.0)),
                      Text(
                        item['description'],
                        style: TextStyle(
                            color: Colors.grey,
                            letterSpacing: 1.2,
                            fontSize: 16.0,
                            height: 1.3),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              )
            ],
          )))
      .toList();

  List<Widget> indicator() => List<Widget>.generate(
      slides.length,
      (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 3.0),
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
                color: currentPage.round() == index
                    ? Color(0XFF256075)
                    : Color(0XFF256075).withOpacity(0.2),
                borderRadius: BorderRadius.circular(10.0)),
          ));

  double currentPage = 0.0;
  final _pageViewController = new PageController();

  @override
  void initState() {
    super.initState();
    _pageViewController.addListener(() {
      setState(() {
        currentPage = _pageViewController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageViewController,
              itemCount: slides.length,
              itemBuilder: (BuildContext context, int index) {
                return slides[index];
              },
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 70.0),
                  padding: EdgeInsets.symmetric(vertical: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicator(),
                  ),
                )
                //  ),
                ),
            Align(
              alignment: Alignment.bottomRight,
              child: CupertinoButton(
                color: Colors.blue,
                child: Padding(padding: EdgeInsets.all(1), child: Text('Next')),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()));
                },
              ),
            ),

            // )
          ],
        ),
      ),
    );
  }
}

List items = [
  {
    "header": "Learn",
    "description":
        "Online chat which provides its users maximum functionality to simplify the search",
    "image": "assets/images/album2.jpg"
  },
  {
    "header": "Build",
    "description":
        "Online chat which provides its users maximum functionality to simplify the search",
    "image": "assets/images/album3.jpg"
  },
  {
    "header": "Launch",
    "description":
        "Online chat which provides its users maximum functionality to simplify the search",
    "image": "assets/images/album1.jpg"
  },
  {
    "header": "Invest",
    "description":
        "Online chat which provides its users maximum functionality to simplify the search",
    "image": "assets/images/album5.jpg"
  },
  {
    "header": "Travel",
    "description":
        "Online chat which provides its users maximum functionality to simplify the search",
    "image": "assets/images/album4.jpg"
  }
];
