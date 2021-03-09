import 'package:flutter/material.dart';
import 'package:minglerapp/Screens/Animations.dart';
import 'package:minglerapp/Screens/ReferenceMaterial.dart';

class Assignments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Text("Assignments"),
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
      //     child: Text("Assignments"),
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left: 17.0),
              //       child: Text(
              //         "Assignments",
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
              AssignmentsDetails(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: SafeArea(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         "🚶",
      //         style: TextStyle(fontSize: 30),
      //       ),
      //       Text(
      //         " OOPS we have reached a deadend ",
      //         textAlign: TextAlign.center,
      //         style: TextStyle(fontSize: 14),
      //       ),
      //       Text(
      //         "🚶🏻‍♂️",
      //         style: TextStyle(fontSize: 30),
      //       ),
      //     ],
      //   ),
      // ),
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
                                                "Start date: 15/08/2020",
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
                                              Text(
                                                "Submission date: 20/08/2020",
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
                                              Text(
                                                "Max marks: 25",
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
                                              Text(
                                                "Marks awarded: 15",
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
                                              Text(
                                                "Remarks: ",
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
                                                    SlideRightRoute(
                                                      page: ReferenceMaterial(),
                                                    ),
                                                  );
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //     builder: (build) =>
                                                  //         ReferenceMaterial(),
                                                  //   ),
                                                  // );
                                                },
                                                child: Text(
                                                  "Reference materials",
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
                        data[i] != null
                            ? Expanded(
                                flex: 3,
                                child: Container(
                                  // color: Colors.red,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "DUE",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.red),
                                      ),
                                      SizedBox(
                                        height: 60,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Color(0XFF17BAFF),
                                        radius: 13,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : Container()
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
