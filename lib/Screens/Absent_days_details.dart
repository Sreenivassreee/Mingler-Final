import 'package:flutter/material.dart';

class AbsentDaysDetails extends StatelessWidget {
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Course: Computational motion planning"),
                    SizedBox(height: 20),
                    Text("Total absent days: 03"),
                    SizedBox(height: 20),
                    Center(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        itemBuilder: (context, i) {
                          return row(
                            day: "05/04/2020",
                            number: i + 1,
                            time: "3:30pm",
                          );
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

  Widget row({int number, String day, String time}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
                "# $number",
                style: TextStyle(fontSize: 24),
              ) ??
              "",
          SizedBox(width: 10),
          Text(
            day ?? "",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(width: 10),
          Text(
            time ?? "",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
