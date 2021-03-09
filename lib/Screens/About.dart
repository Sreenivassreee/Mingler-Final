import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Text("About"),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(0),
            child: Column(
              children: [
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.all(15.0),
                //       child: CircleAvatar(
                //         radius: 17,
                //         backgroundColor: Colors.green,
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(left: 17.0),
                //       child: Text("Robert Jain"),
                //     )
                //   ],
                // ),
                SizedBox(
                  height: 1,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 17.0),
                //       child: Text(
                //         "About",
                //         style: TextStyle(fontWeight: FontWeight.w700),
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: Icon(
                //         Icons.arrow_forward_ios,
                //         size: 15,
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 140,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CircleAvatar(
                        radius: 27,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Professor Rohan tripathi",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "ajayc003@gmail.com",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF1501FF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Summary",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Robotics is an interdisciplinary research area. updated data",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Course details",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Course Credit",
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 20.0),
                                      child: Text("100"),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Course information",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          "Chapter details",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              // fontWeight: FontWeight.w700,
                              // fontSize: 1,
                              ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ChaptorDetails()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChaptorDetails extends StatelessWidget {
  const ChaptorDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = List();
    data.add(
        "Robotic systems typically include three components: a mechanism which is capable of exerting forces and torques on the environment, a perception system for sensing the world and a decision and control system which modulates the robot's behavior to achieve the desired ends. In this course we will consider the problem of how a robot decides what to do to achieve its goals. This problem is often referred to as Motion Planning and it has been formulated in various ways to model different situations. You will learn some of the most common approaches to addressing this problem including graph-based methods, randomized planners and artificial potential fields. Throughout the course, we will discuss the aspects of the problem that make planning challenging.");
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Text(
                                "Automation",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        data[i] != null
                            ? Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  data[i],
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(),
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
