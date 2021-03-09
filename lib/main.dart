import 'package:flutter/material.dart';
import 'package:minglerapp/Screens/CourseVideos.dart';

import 'package:minglerapp/Screens/IntroPage.dart';
import 'package:minglerapp/Screens/MainHomePage.dart';
import 'package:minglerapp/Screens/Scheduled_Classes_Chats.dart';
import 'package:minglerapp/Screens/Scheduled_classes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mingler",
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
