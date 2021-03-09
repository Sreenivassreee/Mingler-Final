import 'package:flutter/material.dart';

import 'package:minglerapp/Screens/LectureScreens/LectureAssignments.dart';
import 'package:minglerapp/Screens/LectureScreens/LectureNotes.dart';

class LectureMainSubject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Text("Robotics"),
        ),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.arrow_forward_ios),
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //   )
        // ],
        leading: Container(),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17.0),
                    child: Text("Robert Jain"),
                  )
                ],
              ),
              course(context),
              groups(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget groups(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
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
            topic = "Course related discussion";
            break;
          case 1:
            topic = "Course videos";
            break;
          case 2:
            topic = "Scheduled classes";
            break;
          case 3:
            topic = "Learning videos";
            break;
        }

        list.add(
          Padding(
            padding: EdgeInsets.symmetric(),
            child: GestureDetector(
              onTap: () {
                switch (topic) {
                  case "Course related discussion":
                    {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) => ExamDetails(),
                      //   ),
                      // );
                    }

                    break;
                  case "Course videos":
                    {
                      // Navigator.push(
                      //   context,
                      //   SlideRightRoute(
                      //     page: CourseVideos(),
                      //   ),
                      // );
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) => CourseVideos(),
                      //   ),
                      // );
                    }

                    break;
                  case "Scheduled classes":
                    {
                      // Navigator.push(
                      //   context,
                      //   SlideRightRoute(
                      //     page: ScheduledClasses(),
                      //   ),
                      // );
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) => ScheduledClasses(),
                      //   ),
                      // );
                    }

                    break;
                  case "Learning videos":
                    {
                      // Navigator.push(
                      //   context,
                      //   SlideRightRoute(
                      //     page: UnreadsClassesScheduled(),
                      //   ),
                      // );
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) => LearningVideos(),
                      //   ),
                      // );
                    }

                    break;
                  default:
                }

                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => ExamDetails(),
                //   ),
                // );
              },
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.message),
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

  Widget course(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      // tilePadding: EdgeInsets.all(0),
      // leading: Icon(Icons.add),
      title: Padding(
        padding: const EdgeInsets.only(left: 0.0),
        child: new Text(
          "Robotics",
          style: TextStyle(color: Colors.black),
        ),
      ),
      children: <Widget>[
        Column(
          children: coursetiles(context),
        )
      ],
    );
  }
}

coursetiles(context) {
  List<Widget> list = [];
  try {
    for (var i = 0; i <= 3; i++) {
      var topic;
      switch (i) {
        case 0:
          topic = "About";
          break;
        case 1:
          topic = "Assignments";
          break;
        case 2:
          topic = "Notes";
          break;
        case 3:
          topic = "Quiz";
          break;
      }

      list.add(
        Padding(
          padding: EdgeInsets.symmetric(
              // horizontal: MediaQuery.of(context).size.width * 0.1,
              ),
          child: GestureDetector(
            onTap: () {
              switch (topic) {
                case "About":
                  // Navigator.push(
                  //   context,
                  //   SlideRightRoute(
                  //     page: About(),
                  //   ),
                  // );
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //       builder: (BuildContext context) => About()),
                  // );
                  break;
                case "Assignments":
                  // Navigator.push(
                  //   context,
                  //   SlideRightRoute(
                  //     page: Assignments(),
                  //   ),
                  // );
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => LectureAssignment(),
                    ),
                  );
                  break;
                case "Notes":
                  // Navigator.push(
                  //   context,
                  //   SlideRightRoute(
                  //     page: Notes(),
                  //   ),
                  // );
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context) => LectureNotes()),
                  );
                  break;
                case "Quiz":
                  // Navigator.push(
                  //   context,
                  //   SlideRightRoute(
                  //     page: QuizHomePage(),
                  //   ),
                  // );
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //       builder: (BuildContext context) => QuizHomePage()),
                  // );
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
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
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
