import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:chewie/chewie.dart';
// import 'package:video_player/video_player.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color colorIcon1;
  Color colorIcon2;
  Color colorIcon3;
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Navigation Drawer",
            style: TextStyle(color: Colors.grey[900])),
        iconTheme: IconThemeData(color: Colors.grey[900]),
      ),
      body: Container(
        margin: EdgeInsets.all(0.0),
        padding: EdgeInsets.all(0.0),
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              accountName: Text("Ashish Rawat",
                  style: TextStyle(color: Colors.black, fontSize: 19.0)),
              // accountEmail: Text("ashishrawat2911@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
              ),
            ),
            MaterialButton(
              // focusColor: Colors.grey,
              // focusElevation: 6.0,
              // highlightColor: Colors.grey,
              onHighlightChanged: (bool t) {
                setState(() {
                  colorIcon1 = t ? Colors.black : Colors.grey[900];
                  colorIcon2 = t ? Colors.grey[900] : Colors.black;
                  colorIcon3 = t ? Colors.grey[900] : Colors.black;
                });
              },
              onPressed: () {
                Navigator.pushNamed(context, 'courses');
              },
              child: ListTile(
                title: Text("Courses",
                    style: TextStyle(color: colorIcon1, fontSize: 15.0)),
                leading: Icon(
                  FontAwesomeIcons.solidPlayCircle,
                  color: colorIcon1,
                ),
              ),
            ),
            MaterialButton(
              onHighlightChanged: (bool t2) {
                setState(() {
                  colorIcon2 = t2 ? Colors.black : Colors.grey[900];
                  colorIcon1 = t2 ? Colors.grey[900] : Colors.black;
                  colorIcon3 = t2 ? Colors.grey[900] : Colors.black;
                });
              },
              onPressed: () {},
              child: ListTile(
                title: Text("Invite Friends",
                    style: TextStyle(color: colorIcon2, fontSize: 15.0)),
                leading: Icon(
                  FontAwesomeIcons.users,
                  color: colorIcon2,
                ),
              ),
            ),
            MaterialButton(
              onHighlightChanged: (bool t3) {
                setState(() {
                  colorIcon3 = t3 ? Colors.black : Colors.grey[900];
                  colorIcon2 = t3 ? Colors.grey[900] : Colors.black;
                  colorIcon1 = t3 ? Colors.grey[900] : Colors.black;
                });
              },
              onPressed: () {},
              child: ListTile(
                title: Text("Contact Us",
                    style: TextStyle(color: colorIcon3, fontSize: 15.0)),
                leading: Icon(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData

                  FontAwesomeIcons.solidQuestionCircle,
                  color: colorIcon3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
