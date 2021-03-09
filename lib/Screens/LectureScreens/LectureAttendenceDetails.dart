import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:minglerapp/Screens/Absent_days_details.dart';
import 'package:minglerapp/Screens/LectureScreens/LectureAttendenceClassInfo.dart';
import 'package:minglerapp/Screens/LectureScreens/Lecture_Attendence_Present_Info.dart';
import 'package:minglerapp/Screens/ReferenceMaterial.dart';

class LectureAttendenceDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Text("Attendence details"),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AssignmentsDetails(),
            ],
          ),
        ),
      ),
    );
  }
}

class AssignmentsDetails extends StatelessWidget {
  const AssignmentsDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = List();
    data.add("");
    data.add(null);
    data.add(null);
    data.add(null);
    data.add(null);
    data.add(null);
    data.add(null);
    data.add(null);

    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        // physics: const AlwaysScrollableScrollPhysics(),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int i) {
          return Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 19,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                            radius: 6,
                                            backgroundColor: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "Indian economics",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              data[i] != null
                                  ? Padding(
                                      padding:
                                          const EdgeInsets.only(left: 30.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: CircleAvatar(
                                                  radius: 6,
                                                  backgroundColor: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                "Total classes conducted: 25",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: CircleAvatar(
                                                  radius: 6,
                                                  backgroundColor: Colors.black,
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (build) =>
                                                          LectureAttendenceClassInfo(),
                                                    ),
                                                  );
                                                },
                                                child: Text(
                                                  "Class information",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color(0XFF005EB5),
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(),
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
