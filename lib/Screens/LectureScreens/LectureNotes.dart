import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LectureNotes extends StatefulWidget {
  @override
  _LectureNotesState createState() => _LectureNotesState();
}

class _LectureNotesState extends State<LectureNotes> {
  TextEditingController displaytext = TextEditingController();
  TextEditingController url = TextEditingController();
  static bool data;
  @override
  void initState() {
    data = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              showSlideupView(context, data);
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
                      "Notes are a great way to make students understand the courses that you are teaching",
                      style: TextStyle(
                          color: Color(0xff0085FF),
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Right now, you have not created any notes. Lets take a first step by clicking the button below",
                      style: TextStyle(
                        color: Color(0xff0085FF),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff0085FF),
                      child: IconButton(
                        onPressed: () => showSlideupView(context, data),
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
          : dataWidget(),
    );
  }

  Widget dataWidget() {
    return SingleChildScrollView(
      child: Container(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Align(
                      //   alignment: Alignment.topCenter,
                      //   child: Container(
                      //     height: 2,
                      //     width: 500,
                      //     color: Colors.black,
                      //   ),
                      // ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Center(
                          child: new Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 30),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Text("Sunday, May 3rd"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "https://www.mingler.tech/app/dashboard",
                              style: TextStyle(
                                  color: Color(0xff0066FF),
                                  decoration: TextDecoration.underline),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  showSlideupView(BuildContext context, bool data) {
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
                          "Attach document or links",
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
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: FlatButton(
                        color: Colors.grey,
                        onPressed: () {
                          attachDocSlideupView(context);
                        },
                        child: Text(
                          "Attach documents",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: FlatButton(
                        color: Colors.grey,
                        onPressed: () {
                          Navigator.pop(context);

                          showAlertDialog(context, data);
                        },
                        child: Text(
                          "Create link",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  attachDocSlideupView(BuildContext context) {
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
                          "Attach document",
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
                  child: Column(
                    children: [
                      TextField(
                        // controller: displaytext,
                        decoration: InputDecoration(
                          labelText: "Text to Display",
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        // controller: displaytext,
                        decoration: InputDecoration(
                          labelText: "URL Link",
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void showAlertDialog(BuildContext context, bool data) {
    showDialog<bool>(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('Add Link'),
          content: Card(
            color: Colors.transparent,
            elevation: 0.0,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: <Widget>[
                    TextField(
                      controller: displaytext,
                      decoration: InputDecoration(
                        labelText: "Text to Display",
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: <Widget>[
                    TextField(
                      controller: url,
                      decoration: InputDecoration(
                        labelText: "URL Link",
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                print(displaytext.text);
                print(url.text);
                Navigator.pop(context);
                print(data);
                setState(() {
                  data = true;
                });
                print(data);
              },
              child: Text("Create"),
            ),
          ],
        );
      },
    );

    // showDialog(
    //     context: context,
    //     child: CupertinoAlertDialog(
    //       title: Text("Add Link"),
    //       content: Material(
    //         child: Column(
    //           children: [
    //             TextField(
    //               // controller: nameController,
    //               decoration: InputDecoration(
    //                 // enabledBorder: UnderlineInputBorder(
    //                 //     borderSide: BorderSide(color: Colors.white)),

    //                 border: OutlineInputBorder(
    //                     borderSide: BorderSide(color: Colors.white)),
    //                 labelText: 'User Name',
    //                 fillColor: Colors.white,
    //                 focusColor: Colors.white,
    //                 hoverColor: Colors.white,
    //               ),
    //             ),
    //             Text(
    //               "URL Link",
    //               style: TextStyle(fontSize: 20),
    //             ),
    //           ],
    //         ),
    //       ),
    //       actions: <Widget>[
    //         CupertinoDialogAction(
    //             isDefaultAction: true,
    //             onPressed: () {
    //               Navigator.pop(context);
    //             },
    //             child: Text("Create")),
    //       ],
    //     ));
  }
}
