import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  List<Widget> message = [];
  bool show = true;
  String fD = "7th July,2020";
  TextEditingController mess = TextEditingController();
  @override
  void initState() {
    setState(() {
      // fD = DateFormat.yMEd().add_jms().format(DateTime.now());
      // fD =
      //     "${fD[5] + fD[6] + fD[7] + fD[8] + fD[9] + fD[10] + fD[11] + fD[12] + fD[13] + fD[14]}";
      // message[0] = Mess();
      // message.add(Mess());
      // message.add(Mess());
      // message.add(Mess());
      // message.add(Mess());
    });

    // messages(context: context, name: "Sreenivas");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Group Name"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            // color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop(message.length);
            }),
        elevation: 0.0,
        // backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Text(
                  fD ?? "",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            !show
                ? Container(
                    height: 1,
                    width: 10,
                    color: Colors.red,
                  )
                : Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: [
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  child: Icon(Icons.person),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Rohit",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Text(
                              "Robert, be the first one to discuss",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
            Container(
              child: !show
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: Mess(
                          mess:
                              "Hello fellow students. This group is specially made for communication between entire students of the college.  Lets us use this technology provided efficiently",
                          name: "Mingler-Where learning happens"),
                    )
                  : Container(),
            ),
            Container(
                child: Column(
              children: [
                Column(
                  children: message,
                  // Container(),
                  //   Mess(),
                  // for (int i = 0; i < message.length; i++)
                  //   GestureDetector(
                  //     onTap: () {
                  //       print(message[i]);
                  //     },
                  //     child: Container(
                  //       child: message[i],
                  //     ),
                  //   ),

                  //   Mess(),

                  // messages(context: context),
                ),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: _buildMessageComposer(),
    );
  }

  double height;

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: height ?? 120.0,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: mess,
                  textCapitalization: TextCapitalization.sentences,
                  onSubmitted: (value) {
                    Add(mess.text);
                    mess.clear();
                  },
                  onChanged: (value) {},
                  decoration: InputDecoration.collapsed(
                    hintText: 'Add a reply',
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.expand_less),
                iconSize: 25.0,
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  if (height == 120) {
                    setState(() {
                      height = 300.0;
                    });
                  } else {
                    setState(() {
                      height = 120.0;
                    });
                  }
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.attach_file),
                    iconSize: 25.0,
                    // color: Theme.of(context).primaryColor,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.person),
                    iconSize: 25.0,
                    // color: Theme.of(context).primaryColor,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.file_copy_sharp),
                    iconSize: 25.0,
                    // color: Theme.of(context).primaryColor,
                    onPressed: () {},
                  ),
                ],
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    Add(mess.text);
                    mess.clear();
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Add(String mess) {
    // String fD = DateFormat.yMEd().add_jms().format(DateTime.now());
    // print("formattedDate :${fD}");

    // String time =
    //     "${fD[15] + fD[16] + fD[17] + fD[18] + fD[19] + fD[23] + fD[24]}";

    setState(() {
      if (mess != "") {
        show = false;

        message.add(
          Mess(
            mess: mess,
            name: "Rohan",
            time: "5:52 PM",
          ),
        );
      }
    });
  }
}

class Mess extends StatelessWidget {
  String mess, name, time;
  Mess({this.mess, this.name, this.time});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                // color: Colors.green,
                child: Row(
                  children: [
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              profileSlideUpView(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 15,
                                child: Icon(Icons.person),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  print(mess);
                                  showSlideupView(context);
                                  // Navigator.of(context).push(
                                  //   MaterialPageRoute(
                                  //     builder: (BuildContext context2) =>
                                  //         MessageScreen(),
                                  //   ),
                                  // );
                                },
                                child: Text(
                                  name ?? " ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
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
                          time ?? "5:52pm",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   child: Text(
              //     "5:52pm",
              //     textAlign: TextAlign.right,
              //     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              //   ),
              // ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55.0, right: 10),
            child: Container(
              child: Text(
                mess ?? " ",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }

  showSlideupView(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: new Container(
            child: new GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: double.infinity,
                height: 300,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "  🙂  ",
                                  style: TextStyle(fontSize: 22),
                                ),
                                Text(
                                  "  OK  ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  "  🖖🏻  ",
                                  style: TextStyle(fontSize: 22),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                color: Colors.black,
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SheetTitles(context, "Reply to this message"),
                    SheetTitles(context, "Delete Message"),
                    SheetTitles(context, "Edit Message"),
                    SheetTitles(context, "Copy message"),
                    SheetTitles(context, "Save message"),
                    SheetTitles(context, "Forward message"),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  profileSlideUpView(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: new Container(
            child: new GestureDetector(
              // onTap: () => Navigator.pop(context),
              child: SafeArea(
                child: Container(
                  width: double.infinity,
                  // height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      CircleAvatar(
                        radius: 80,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Mingler",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      OutlineButton(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            "Message",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Department",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Computer science",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Semester",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "6",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Email id",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Mingler@gmail.com",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget SheetTitles(BuildContext context, String action) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 15.0, right: 15.0, bottom: 8.0, top: 8.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                action,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
              ),
              Text(
                action[0],
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
