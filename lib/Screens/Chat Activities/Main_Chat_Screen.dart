import 'package:flutter/material.dart';
import 'package:minglerapp/Screens/Chat%20Activities/MessageScreen.dart';

class MainChatScreen extends StatefulWidget {
  String topic;
  MainChatScreen({this.topic});

  @override
  _MainChatScreenState createState() => _MainChatScreenState();
}

class _MainChatScreenState extends State<MainChatScreen> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.topic),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(Icons.chat),
                        // SizedBox(
                        //   width: 10,
                        // ),
                        // Text(
                        //   "Exam details",
                        //   style: TextStyle(fontWeight: FontWeight.w900),
                        // ),
                      ],
                    ),
                  ),
                  Text(
                    "25 members",
                    // style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 13.0, top: 10),
                child: Text(
                  "Welcome to the space of learning. ",
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 13.0, top: 20),
                child: Text(
                  "Newsroom is automatically created, which cannot be archived.This group consists of every students in the computer science department.",
                ),
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              // physics: const AlwaysScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (BuildContext context, int i) {
                return Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: new Container(
                        margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        padding: const EdgeInsets.only(
                            top: 5.0, bottom: 5.0, left: 20, right: 20),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        child: Text(
                          "Sunday, May 3rd",
                        ),
                      ),
                    ),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      // physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int i) {
                        return MessagesList(context);
                      },
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget MessagesList(context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              child: Row(
                children: [
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 15,
                            child: Icon(Icons.person),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () async {
                                // Navigator.pop(context);
                                num = await Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context2) =>
                                        MessageScreen(),
                                  ),
                                );
                                setState(() {
                                  num = num;
                                });

                                // print(num);
                              },
                              // onTap: () {
                              // showSlideupView(context);
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //     builder: (BuildContext context2) =>
                              //         MessageScreen(),
                              //   ),
                              // );
                              // },
                              child: Container(
                                child: Text(
                                  "Mingler-Where learning happens",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        "5:52pm",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55.0, right: 10),
          child: GestureDetector(
            onTap: () async {
              // Navigator.pop(context);
              num = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context2) => MessageScreen(),
                ),
              );
              setState(() {
                num = num;
              });

              // print(num);
            },
            child: Container(
              child: Text(
                "Hello fellow students. This group is specially made for communication between entire students of the college.Lets us use this technology provided efficiently",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, top: 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // num == "" || num == "0" ? Container() :
              Replys(context, num),
              // Container(
              //   height: 20,
              //   color: Colors.red,
              //   child: Text("Hi"),
              // ),
            ],
          ),
        ),
      ],
    );
  }

  Replys(BuildContext context, int num) {
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                // num == "1"
                // ?

                for (int i = 1; i <= num && i <= 5; i++)
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 13,
                      child: Icon(Icons.person),
                    ),
                  ),
              ],
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  // showSlideupView(context);
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context2) =>
                  //         MessageScreen(),
                  //   ),
                  // );
                },
                child: Container(
                  child: Text(
                    "$num" + " Reply" ?? " ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Color(
                        0XFF2A07FC,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
