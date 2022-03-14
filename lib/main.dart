import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _Get_Appbar("Asef Ghorbani"),
        body: SafeArea(
          child: _Get_Body(),
        ),
      ),
    );
  }

  PreferredSizeWidget _Get_Appbar(String Title) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Text(Title),
    );
  }

  Widget _Get_Body() {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/user.png'),
                  radius: 80,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "آصف قربانی",
                  style: TextStyle(fontFamily: 'Vazir'),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.instagram),
                      color: Colors.red,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.github),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      color: Colors.blue,
                    ),
                  ],
                ),
                _Get_Skils(),
                SizedBox(
                  height: 20,
                ),
                _Get_Resume()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _Get_Skils() {
    var List = ['android', 'dart', 'java', 'kotlin', 'flutter'];
    return Wrap(
      spacing: 8,
      alignment: WrapAlignment.center,
      children: [
        for (var Skill in List)
          Card(
            elevation: 6,
            color: Colors.blue,
            shadowColor: Colors.blue,
            child: Column(
              children: [
                Container(
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage('images/${Skill}.png'),
                    ),
                  ),
                ),
                Text(Skill),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _Get_Resume() {
    var List = ['برنامه نویس اندروید', 'برنامه نویس PHP', 'برنامه نویس C#'];
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        width: double.infinity,
        color: Colors.blue,
        child: Column(
          children: [
            Text(
              "سوابق کاری",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Vazir',
                fontSize: 26,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                for (var Item in List)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Text(
                      Item,
                      style: TextStyle(
                        fontFamily: 'Vazir',
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
              ],
            ),
          ],
        ));
  }
}
