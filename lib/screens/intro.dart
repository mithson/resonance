import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resonance/screens/lang.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final controller = new PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        // physics: NeverScrollableScrollPhysics(),
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          Email(),
        ],
      ),
    );
  }
}

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
}

final email = TextEditingController();
late bool isEmpty = true;
var user = email.text;

class _EmailState extends State<Email> {
  FocusNode _focus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(left: 12),
            child: Icon(Icons.arrow_back_ios, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Create account',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400)),
      ),
      body: Align(
          alignment: Alignment.center,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text('Whats your Email?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: 12, top: 10, right: 15, bottom: 0),
                    child: TextField(
                      onTap: () {
                        setState(() {
                          if (email.text.isEmpty) {
                            isEmpty = true;
                          } else {
                            isEmpty = false;
                          }
                        });
                        // print(val);
                        print(email.text);
                      },
                      focusNode: _focus,
                      cursorColor: Colors.white,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorHeight: 30,
                      maxLines: 1,
                      maxLength: 30,
                      cursorWidth: 1,
                      controller: email,
                      decoration: InputDecoration(
                        // counterText: 'You\'ll need to confirm this email later',
                        // counterStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            top: 35, bottom: 0, left: 10, right: 10),
                        fillColor: Colors.white30,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 0, right: 15),
                  child: Text('You\'ll need to confirm this email later',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                SizedBox(
                  height: 30,
                ),
                Visibility(
                  visible: isEmpty,
                  child: Align(
                    alignment: Alignment.center,
                    child: MaterialButton(
                      height: 50,
                      minWidth: 100,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LangScreen()));
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                )
              ])),
    );
  }
}
