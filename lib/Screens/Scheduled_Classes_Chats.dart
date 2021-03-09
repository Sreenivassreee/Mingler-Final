import 'package:flutter/material.dart';

class ScheduledClassesChats extends StatefulWidget {
  @override
  _ScheduledClassesChatsState createState() => _ScheduledClassesChatsState();
}

class _ScheduledClassesChatsState extends State<ScheduledClassesChats> {
  List<Widget> message = [];

  bool show = true;

  String fD = "0";

  TextEditingController mess = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Text("Robotics for life"),
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
      //     child: Text("Robotics for life"),
      //   ),
      // ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Today - thursday, September 21st"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("9:00 am - 10:00 am"),
                ),
                Container(
                  child: Column(
                    children: [
                      !show
                          ? Container(
                              height: 1,
                              width: 10,
                            )
                          : Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                          child: Column(
                        children: [
                          Column(
                            children:
                                //   Container(),
                                //   Mess(),
                                message,
                            //   Mess(),
                            // ]
                            // messages(context: context),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
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
    print("formattedDate :${fD}");

    // String time =
    //     "${fD[15] + fD[16] + fD[17] + fD[18] + fD[19] + fD[23] + fD[24]}";

    setState(() {
      if (mess != "") {
        show = false;

        message.add(Mess(
          mess: mess,
          name: "Rohan",
          time: "5:52pm",
        ));
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
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
                      ],
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
}
