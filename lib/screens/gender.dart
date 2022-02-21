import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resonance/screens/artists.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  var _selectedValue = 'Select';
  var options = ['Male', 'Female', 'Non Binary'];

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
              child: Text('What is your gender',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            GestureDetector(
              onTap: () => _showPicker(context),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white30),
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                height: 60,
                child: Padding(
                    padding: EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      ' $_selectedValue',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                height: 50,
                minWidth: 100,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Artists()));
                },
                child: Text(
                  "NEXT",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showPicker(BuildContext ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: CupertinoPicker(
                backgroundColor: Color.fromARGB(255, 89, 89, 89),
                itemExtent: 40,
                scrollController: FixedExtentScrollController(initialItem: 1),
                children: [
                  for (var i in options)
                    Text(
                      i.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                ],
                onSelectedItemChanged: (value) {
                  setState(() {
                    _selectedValue = options[value];
                  });
                },
              ),
            ));
  }
}
