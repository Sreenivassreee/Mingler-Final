import 'package:flutter/material.dart';

class LectureAssignment extends StatefulWidget {
  @override
  _LectureAssignmentState createState() => _LectureAssignmentState();
}

class _LectureAssignmentState extends State<LectureAssignment> {
  bool data = true;
  DateTime selectedDate;
  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignments"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              showSlideupView(context);
            },
          )
        ],
      ),
      body: !data
          ? Container(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Assignments are a great way to make students understand the courses that you are teaching",
                      style: TextStyle(
                          color: Color(0xff0085FF),
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Right now, you have not created any assignments. Lets take a first step by clicking the button below",
                      style: TextStyle(
                          color: Color(0xff0085FF),
                          fontWeight: FontWeight.w700),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff0085FF),
                      child: IconButton(
                        onPressed: () => showSlideupView(context),
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            )
          : dataContainer(context),
    );
  }

  showSlideupView(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: new Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Assignment",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.minimize,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.fit_screen,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.multiple_stop,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 50,
                  color: Color(0xff666666),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        // controller: displaytext,
                        decoration: InputDecoration(
                          labelText: "Topic",
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        // controller: displaytext,
                        decoration: InputDecoration(
                          labelText: "Start date",
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        // controller: displaytext,
                        decoration: InputDecoration(
                          labelText: "Submission date",
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        // controller: displaytext,
                        decoration: InputDecoration(
                          labelText: "Max marks",
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        // controller: displaytext,
                        decoration: InputDecoration(
                          labelText: "Remarks",
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        // controller: displaytext,
                        decoration: InputDecoration(
                          labelText: "Attachments",
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RaisedButton(
                        color: Color(0xff08F366),
                        child: Text(
                          "Create",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  submittedListSlideUp(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: new Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Submitted List",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.minimize,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.fit_screen,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.multiple_stop,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 50,
                  color: Color(0xff666666),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "1",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Rohith",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Date\n15/08/2020",
                                textAlign: TextAlign.center,
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Attachments",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff2A07FC)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  updateMarksSlideUp(context);
                                },
                                child: Text(
                                  "Marks awarded \n15",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ]),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  updateMarksSlideUp(BuildContext context) {
    _selectDate(BuildContext context) async {
      print("hi");
      final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
        helpText: 'Pick Date to Update',
        initialEntryMode: DatePickerEntryMode.input,
      );

      if (picked != null && picked != selectedDate) {
        setState(() {
          selectedDate = picked;
        });

        print(selectedDate);
        print(picked);
      }
    }

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: new Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Update marks",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.minimize,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.fit_screen,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.multiple_stop,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 50,
                  color: Color(0xff666666),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextField(
                      // controller: displaytext,
                      decoration: InputDecoration(
                        labelText: "Marks",
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                      color: Color(0xff08F366),
                      onPressed: () {},
                      child: Text(
                        "Update Now",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: [
                        RaisedButton(
                          color: Color(0xff08F366),
                          onPressed: () {
                            _selectDate(context);
                          },
                          child: Text("Update later",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${selectedDate.toLocal()}".split(' ')[0],
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget dataContainer(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          assignmentsDetails(context),
        ],
      ),
    );
  }

  Widget assignmentsDetails(BuildContext context) {
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
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                                "Start date",
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
                                                "Submission date",
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
                                                "Remarks",
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
                                                  // Navigator.push(
                                                  //   context,
                                                  //   SlideRightRoute(
                                                  //     page: ReferenceMaterial(),
                                                  //   ),
                                                  // );
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //     builder: (build) =>
                                                  //         ReferenceMaterial(),
                                                  //   ),
                                                  // );
                                                },
                                                child: Text(
                                                  "Attachments",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color(0XFF005EB5),
                                                    fontWeight: FontWeight.w700,
                                                  ),
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
                                                  // Navigator.push(
                                                  //   context,
                                                  //   SlideRightRoute(
                                                  //     page: ReferenceMaterial(),
                                                  //   ),
                                                  // );
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //     builder: (build) =>
                                                  //         ReferenceMaterial(),
                                                  //   ),
                                                  // );
                                                },
                                                child: GestureDetector(
                                                  onTap: () {
                                                    submittedListSlideUp(
                                                        context);
                                                  },
                                                  child: Text(
                                                    "Submitted list",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Color(0XFF005EB5),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
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
                                                  // Navigator.push(
                                                  //   context,
                                                  //   SlideRightRoute(
                                                  //     page: ReferenceMaterial(),
                                                  //   ),
                                                  // );
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //     builder: (build) =>
                                                  //         ReferenceMaterial(),
                                                  //   ),
                                                  // );
                                                },
                                                child: Text(
                                                  "Marked list",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color(0XFF005EB5),
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              IconButton(
                                                icon: Icon(Icons.edit),
                                                onPressed: () {},
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 30.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    // Navigator.push(
                                                    //   context,
                                                    //   SlideRightRoute(
                                                    //     page: ReferenceMaterial(),
                                                    //   ),
                                                    // );
                                                    // Navigator.push(
                                                    //   context,
                                                    //   MaterialPageRoute(
                                                    //     builder: (build) =>
                                                    //         ReferenceMaterial(),
                                                    //   ),
                                                    // );
                                                  },
                                                  child: Text(
                                                    "Date of marks updation",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Color(0XFF005EB5),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                Text("15/08/2020")
                                              ],
                                            ),
                                          )
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
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  // color: Colors.red,
                                  child: Icon(
                                    Icons.edit,
                                    size: 30,
                                    color: Colors.black,
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
