import 'package:flutter/material.dart';
import 'package:minglerapp/Screens/LectureScreens/Lecture_Attendence_Absent_Info.dart';
import 'package:minglerapp/Screens/LectureScreens/Lecture_Attendence_Present_Info.dart';

class LectureAttendenceClassInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Text("Class information"),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "S.NO",
                          ),
                          Text(
                            "Date",
                          ),
                          Text(
                            "Time",
                          ),
                          Text(
                            "Total\npresent",
                          ),
                          Text(
                            "Total\nabsent",
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, i) {
                          return row(
                              day: "05/04/2020",
                              number: i + 1,
                              time: "3:30pm",
                              context: context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget row({int number, String day, String time, BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
                "# $number",
              ) ??
              "",
          SizedBox(width: 10),
          Text(
            day ?? "",
          ),
          SizedBox(width: 10),
          Text(
            "$time \n$time" ?? "",
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              // LectureAttendencePresentInfo;

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (build) => LectureAttendencePresentInfo(),
                ),
              );
            },
            child: Text(
              "(5)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff1501FF),
              ),
            ),
          ),
          SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (build) => LectureAttendenceAbsentInfo(),
                ),
              );
            },
            child: Text(
              "(5)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff1501FF),
              ),
            ),
          ),
          Icon(Icons.download_rounded)
        ],
      ),
    );
  }
}
