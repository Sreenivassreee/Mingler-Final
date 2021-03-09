import 'package:flutter/material.dart';
import 'package:minglerapp/Screens/Animations.dart';
import 'package:minglerapp/Screens/Attendence_details.dart';
import 'package:minglerapp/Screens/Chat%20Activities/Main_Chat_Screen.dart';
import 'package:minglerapp/Screens/Unreads_Classes_scheduled.dart';

class MainHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          // backgroundColor: Color(0XFFE5E5E5),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.blueAccent,
                child: Icon(
                  Icons.wifi_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text("M"),
            ),
          ),
          title: Text(
            "MINGLER",
            style: TextStyle(
              // color: Colors.white
              color: Color(0XFF1501FF),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0XFFFFA169),
                          child: Icon(
                            Icons.multiline_chart_outlined,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Learning Development",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                          child: Text(
                            "Unreads- Classes scheduled",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    SlideRightRoute(
                                      page: UnreadsClassesScheduled(),
                                    ),
                                  );
                                  // Navigator.push(
                                  //   context,
                                  //   SlideRightRoute(
                                  //     builder: (build) =>
                                  //         UnreadsClassesScheduled(),
                                  //   ),
                                  // );
                                },
                                child: unreads(
                                  context: context,
                                  title: "Robotics",
                                  number: "5",
                                ),
                              ),
                              unreads(
                                context: context,
                                title: "Introduction to programming",
                                number: "3",
                              ),
                              unreads(
                                context: context,
                                title: "Announcements",
                                number: "3",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                          child: Text(
                            "Unreads - Course Conversations",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            children: [
                              unreads(
                                context: context,
                                title: "Robotics",
                                number: "5",
                              ),
                              unreads(
                                context: context,
                                title: "Introduction to programming",
                                number: "3",
                              ),
                              unreads(
                                context: context,
                                title: "Announcements",
                                number: "3",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                          child: Text(
                            "Unreads - Department Conversations",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            children: [
                              unreads(
                                context: context,
                                title: "Robotics",
                                number: "5",
                              ),
                              unreads(
                                context: context,
                                title: "Introduction to programming",
                                number: "3",
                              ),
                              unreads(
                                context: context,
                                title: "Announcements",
                                number: "3",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context2) =>
                                AttendenceDetails(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.present_to_all),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Attendance details"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    courses(context),
                    groups(context),
                    directMessage(context)
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavArea());
  }

  Widget directMessage(BuildContext context) {
    return ExpansionTile(
      expandedAlignment: Alignment.bottomLeft,
      title: Padding(
        padding: const EdgeInsets.only(left: 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Text(
              "Direct message",
              style: TextStyle(color: Colors.black),
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                child: Icon(
                  Icons.add,
                  size: 20,
                ),
                radius: 11,
                backgroundColor: Colors.green,
              ),
            )
          ],
        ),
      ),
      children: <Widget>[
        Column(
          children: tile(context),
        )
      ],
    );
  }

  tile(context) {
    List<Widget> list = [];
    try {
      for (var i = 0; i <= 1; i++) {
        var topic;
        Color color;
        switch (i) {
          case 0:
            topic = "Robin";
            color = Colors.black;
            break;
          case 1:
            topic = "Rohit, Hari";
            color = Color(0XFF08F366);
            break;
        }

        list.add(
          Padding(
            padding: EdgeInsets.symmetric(),
            child: GestureDetector(
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //       builder: (BuildContext context2) => ExamDetails()),
                // );
              },
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: color,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Expanded(
                          child: Text(
                            topic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    } catch (e) {
      // print(e);
    }

    return list;
  }

  Widget bottomNavArea(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 50,
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(
                color: Color(0XFFFFA169),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Feedback",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.logout),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Log out",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget groups(BuildContext context) {
    return ExpansionTile(
      title: Padding(
        padding: const EdgeInsets.only(left: 0.0),
        child: new Text(
          "Groups",
          style: TextStyle(color: Colors.black),
        ),
      ),
      children: <Widget>[
        Column(
          children: groupstile(context),
        )
      ],
    );
  }

  groupstile(context) {
    List<Widget> list = [];
    try {
      for (var i = 0; i <= 3; i++) {
        var topic;
        switch (i) {
          case 0:
            topic = "Newsroom";
            break;
          case 1:
            topic = "Exam details";
            break;
          case 2:
            topic = "Newsroom";
            break;
          case 3:
            topic = "Exam details";
            break;
        }

        list.add(
          Padding(
            padding: EdgeInsets.symmetric(),
            child: GestureDetector(
              onTap: () {
                switch (topic) {
                  case "Newsroom":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            MainChatScreen(topic: topic),
                      ),
                    );
                    break;
                  case "Exam details":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            MainChatScreen(topic: topic),
                      ),
                    );
                    break;
                  case "Newsroom":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            MainChatScreen(topic: topic),
                      ),
                    );
                    break;
                  case "Exam details":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            MainChatScreen(topic: topic),
                      ),
                    );
                    break;
                  default:
                }
              },
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.card_giftcard),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Expanded(
                          child: Text(
                            topic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    } catch (e) {
      // print(e);
    }

    return list;
  }

  Widget courses(BuildContext context) {
    return ExpansionTile(
      // tilePadding: EdgeInsets.all(0),
      // leading: Icon(Icons.add),
      title: Padding(
        padding: const EdgeInsets.only(left: 0.0),
        child: new Text(
          "Courses",
          style: TextStyle(color: Colors.black),
        ),
      ),
      children: <Widget>[
        Column(
          children: coursestile(context),
        )
      ],
    );
  }
}

coursestile(context) {
  List<Widget> list = [];
  try {
    for (var i = 0; i <= 3; i++) {
      var topic;
      switch (i) {
        case 0:
          topic = "Robotics";
          break;
        case 1:
          topic = "Introduction to programming";
          break;
        case 2:
          topic = "Announcements";
          break;
        case 3:
          topic = "Attendance details";
          break;
      }

      list.add(
        Padding(
          padding: EdgeInsets.symmetric(
              // horizontal: MediaQuery.of(context).size.width * 0.1,
              ),
          child: GestureDetector(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //       builder: (BuildContext context) => ExamDetails()),
              // );
            },
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.card_membership),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Expanded(
                        child: Text(
                          topic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
  } catch (e) {
    // print(e);
  }

  return list;
}

class BottomNavArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 50,
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(
                color: Color(0XFFFFA169),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Feedback",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.logout),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Log out",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget unreads({BuildContext context, String title, String number}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 8,
              backgroundColor: Color(0XFF08F366),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "( $number )",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      )
    ],
  );
}
