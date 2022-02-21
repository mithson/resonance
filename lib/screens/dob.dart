import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resonance/data.dart';
import 'package:resonance/screens/gender.dart';

class DateOfBirth extends StatefulWidget {
  const DateOfBirth({Key? key}) : super(key: key);

  @override
  State<DateOfBirth> createState() => DateOfBirthState();
}

class DateOfBirthState extends State<DateOfBirth> {
  DateTime date = DateTime(2001, 12, 09);

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.only(top: 6.0),
              // The Bottom margin is provided to align the popup above the system navigation bar.
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: Colors.white30,
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    List months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    var mon = date.month;

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
              child: Text('What\'s your date of birth',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            GestureDetector(
              onTap: () => _showDialog(
                CupertinoDatePicker(
                  minimumYear: DateTime.now().year - 150,
                  maximumYear: DateTime.now().year,
                  initialDateTime: date,
                  mode: CupertinoDatePickerMode.date,
                  use24hFormat: true,
                  // This is called when the user changes the date.
                  onDateTimeChanged: (DateTime newDate) {
                    setState(() => date = newDate);
                  },
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white30),
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                height: 60,
                child: Padding(
                    padding: EdgeInsets.only(left: 15, top: 17),
                    child: Text(
                      '${date.day} ${months[mon - 1]} ${date.year}',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Visibility(
              visible: date == DateTime(2001, 12, 09) ? false : true,
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
                    userDOB = date;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Gender()));
                  },
                  child: Text(
                    "NEXT",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );

    // This shows a CupertinoModalPopup with a reasonable fixed height which hosts CupertinoDatePicker.
  }
}

class _DatePickerItem extends StatelessWidget {
  const _DatePickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
          bottom: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
