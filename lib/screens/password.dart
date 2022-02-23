import 'package:flutter/material.dart';
import 'package:resonance/screens/dob.dart';
import 'package:resonance/model/data.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

final password = TextEditingController();

class _PasswordState extends State<Password> {
  final password = TextEditingController();
  bool? isPassowrdValid;
  bool _passwordVisible = false;

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
                  child: Text('Create Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: TextField(
                    obscureText: !_passwordVisible,
                    onChanged: (val) {
                      setState(() {});
                      // print(val);
                    },
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    cursorHeight: 30,
                    maxLines: 1,
                    maxLength: 30,
                    cursorWidth: 1,
                    controller: password,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                        icon: Icon(
                          _passwordVisible
                              ? Icons.remove_red_eye
                              : Icons.visibility_off,
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      focusColor: Colors.white,
                      fillColor: Colors.white30,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18, top: 0, right: 15),
                  child: Text('Use at least 8 characters',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
                SizedBox(
                  height: 30,
                ),
                Visibility(
                  visible: password.text == '' ? false : true,
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
                        userPassword = password.text;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DateOfBirth()));
                      },
                      child: Text(
                        "NEXT",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                )
              ])),
    );
  }
}
