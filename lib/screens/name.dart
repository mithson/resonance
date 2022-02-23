import 'package:flutter/material.dart';
import 'package:resonance/model/data.dart';
import 'package:resonance/widgets/bottom_nav_bar.dart';

class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  final name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text('What\'s your name?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: TextField(
              onChanged: (val) {
                setState(() {});
              },
              cursorColor: Colors.white,
              style: TextStyle(
                color: Colors.white,
              ),
              cursorHeight: 30,
              maxLines: 1,
              maxLength: 30,
              cursorWidth: 1,
              controller: name,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(width: 1, color: Colors.white),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                ),
                focusColor: Colors.white,
                fillColor: Colors.white30,
                filled: true,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18, top: 0, right: 15),
            child: Text('This will appear as your profile name',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400)),
          ),
          SizedBox(
            height: 30,
          ),
          Visibility(
            visible: name.text == '' ? false : true,
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
                  userName = name.text;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()));
                  print(
                      '$userEmail, $userPassword, $userDOB, $userGender, $userName');
                },
                child: Text(
                  "CREATE",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
