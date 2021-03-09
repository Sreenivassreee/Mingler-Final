import 'package:flutter/material.dart';

class LectureAttendencePresentInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Text("Present information"),
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "S.NO",
                          ),
                          Text(
                            "Name            ",
                          ),
                          Text(
                            "Email Id       ",
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        itemBuilder: (context, i) {
                          return row(
                            name: "Rohit",
                            number: i + 1,
                            mail: "Rohit@gmail.com",
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

  Widget row({int number, String name, String mail}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
                "# $number",
              ) ??
              "",
          SizedBox(width: 10),
          Text(
            name ?? "",
          ),
          SizedBox(width: 10),
          Text(
            mail ?? "",
            style: TextStyle(
              color: Color(0xff1501FF),
            ),
          ),
        ],
      ),
    );
  }
}
