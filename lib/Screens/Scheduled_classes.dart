import 'package:flutter/material.dart';
import 'package:minglerapp/Screens/Animations.dart';
import 'package:minglerapp/Screens/Scheduled_Classes_Chats.dart';

class ScheduledClasses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Text("Scheduled Classes"),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
        leading: Container(),
      ),
      // appBar: AppBar(
      //   title: Padding(
      //     padding: const EdgeInsets.only(left: 17.0),
      //     child: Text("Scheduled Classes"),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("25 members")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Welcome to the space of learning. "),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "This group consists of conversation and link to the classe scheduled for you in this course"),
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                // physics: const AlwaysScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (BuildContext context, int i) {
                  return dateWiseMeetings(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget dateWiseMeetings(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0, top: 20),
          child: Container(
            width: MediaQuery.of(context).size.width - 10,
            child: Center(
              child: new Container(
                // margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 5.0),
                  child: Text("Sunday, May 3rd"),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          child: Container(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              // physics: const AlwaysScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (BuildContext context, int i) {
                return singleDay(context);
              },
            ),
          ),
        )
      ],
    );
  }

  Widget singleDay(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Robotics for life"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  SlideRightRoute(
                    page: ScheduledClassesChats(),
                  ),
                );
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => ScheduledClassesChats(),
                //   ),
                // );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "(40 conversations)",
                  style: TextStyle(
                    color: Color(0XFFB30ACE),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Today - thursday, September 21st"),
              Text("9:00 am - 10:00 am"),
              Text(
                "https://meet.google.com/ekw-tbnm-ytk",
                style: TextStyle(
                    color: Color(0XFF1501FF),
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
