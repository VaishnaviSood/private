// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

import 'video_item.dart';

class CourseScreen extends StatefulWidget {
  @override
  _CourseScreenState createState() => _CourseScreenState();
}

int selected = -1;

class _CourseScreenState extends State<CourseScreen> {
  String url = "";
  FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
  Reference ref = FirebaseStorage.instance.ref(
      '/Java Course/y2mate.com - Java In 5 Minutes  What Is Java  Java Programming For Beginners  Learn Java  Simplilearn_v240P.mp4');
  Future<void> getURL() async {
    url = await ref.getDownloadURL();
    print('inside geturl');
    print(url);
  }

  void initState() {
    super.initState();
    getURL();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.green,
        onPressed: () {},
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              width: double.infinity,
              child: VideoItem(
                videoPlayerController: VideoPlayerController.network(
                    'https://firebasestorage.googleapis.com/v0/b/assignment-task-93fd3.appspot.com/o/Java%20Course%2Fy2mate.com%20-%20Java%20In%205%20Minutes%20%20What%20Is%20Java%20%20Java%20Programming%20For%20Beginners%20%20Learn%20Java%20%20Simplilearn_v240P.mp4?alt=media&token=3b471087-585a-4733-80c6-96977e01bc1a'
                    // 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
                    ),
                looping: false,
                autoplay: true,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Text(
                    "Beginners Module",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[700]),
                  ),
                  VideoButton(
                      text: 'Java - Session 1: Introduction to Java',
                      id: 1,
                      onpressed: () {
                        setState(() {
                          selected = 1;
                        });
                      }),
                  VideoButton(
                      text: 'Java - Session 2: Java History',
                      id: 2,
                      onpressed: () {
                        setState(() {
                          selected = 2;
                        });
                      }),
                  VideoButton(
                      text: 'Java - Session 3: Java Features',
                      id: 3,
                      onpressed: () {
                        setState(() {
                          selected = 3;
                        });
                      }),
                  VideoButton(
                      text: 'Java - Session 4: Java Installation',
                      id: 4,
                      onpressed: () {
                        setState(() {
                          selected = 4;
                        });
                      }),
                  VideoButton(
                      text: 'Java - Session 5: Java Hello World',
                      id: 5,
                      onpressed: () {
                        setState(() {
                          selected = 5;
                        });
                      }),
                  Text(
                    'Intermediate Module',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[700]),
                  ),
                  VideoButton(
                      text: 'Java - Session 6: Java Hello World...',
                      id: 6,
                      onpressed: () {
                        setState(() {
                          selected = 6;
                        });
                      }),
                  VideoButton(
                      text: 'Java - Session 7: Java IDE',
                      id: 7,
                      onpressed: () {
                        setState(() {
                          selected = 7;
                        });
                      }),
                  VideoButton(
                      text: 'Java - Session 8: Java Features',
                      id: 8,
                      onpressed: () {
                        setState(() {
                          selected = 8;
                        });
                      }),
                  VideoButton(
                      text: 'Java - Session 9: Java Installation',
                      id: 9,
                      onpressed: () {
                        setState(() {
                          selected = 9;
                        });
                      }),
                  VideoButton(
                    text: 'Java - Session 10: Java Hello World',
                    id: 10,
                    onpressed: () {
                      setState(() {
                        selected = 10;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VideoButton extends StatefulWidget {
  final String text;
  final int id;
  final Function onpressed;
  VideoButton({this.text, this.id, this.onpressed});

  @override
  _VideoButtonState createState() => _VideoButtonState();
}

class _VideoButtonState extends State<VideoButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpressed,
      child: Card(
        margin: EdgeInsets.all(10.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: selected == widget.id ? 5.0 : 1.0,
        child: Container(
          padding: EdgeInsets.all(0.0),
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          height: 50,
          width: 100,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Visibility(
                visible: selected == widget.id,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0)),
                  ),
                  margin: EdgeInsets.zero,
                  width: 10.0,
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Icon(
                  Icons.check,
                  size: 20.0,
                  color: Colors.grey[700],
                ),
              ),
              Text(widget.text),
            ],
          ),
        ),
      ),
    );
  }
}
