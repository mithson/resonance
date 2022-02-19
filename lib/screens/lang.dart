import 'package:flutter/material.dart';

class LangScreen extends StatefulWidget {
  const LangScreen({Key? key}) : super(key: key);

  @override
  State<LangScreen> createState() => _LangScreenState();
}

class _LangScreenState extends State<LangScreen> {
  List<String> selectedList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: AppBar(
                  backgroundColor: Colors.black,
                  title: Text(
                    'Languages',
                  ))),
          backgroundColor: Colors.black,
          body: Padding(
            padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 90),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: title.length,
              itemBuilder: (context, index) => GestureDetector(
                child: GestureDetector(
                  // onLongPress: () {},
                  onTap: () {
                    if (selectedList.contains(title[index])) {
                      setState(() {
                        selectedList.removeWhere((val) => val == title[index]);
                        print(selectedList);
                      });
                    } else {
                      setState(() {
                        selectedList.add(title[index]);
                        print(selectedList);
                      });
                    }
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        // image: DecorationImage(
                        //   image: AssetImage(image[index]),
                        // ),
                        color: selectedList.contains(title[index])
                            ? Colors.green
                            : Colors.purple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 10),
                        child: Row(children: [
                          Text(
                            title[index],
                          ),
                          Spacer(),
                          Visibility(
                              visible: selectedList.contains(title[index]),
                              child: Icon(Icons.check, color: Colors.black)),
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.8666,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15),
            ),
          )),
    );
  }

  var image = [
    'assets/images/album6.jpg',
    'assets/images/album7.jpg',
    'assets/images/album6.jpg',
    'assets/images/album7.jpg',
    'assets/images/album6.jpg',
    'assets/images/album7.jpg'
  ];
  var title = [
    'English',
    'Hindi',
    'Marathi',
    'Punjabi',
    'Tamil',
    'italian',
  ];
}
