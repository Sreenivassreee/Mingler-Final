import 'package:flutter/material.dart';

class ScheduledQuizExamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Text("Your scheduled quiz exam"),
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
      //     child: Text("Your scheduled quiz exam"),
      //   ),
      // ),
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              "Information about the quiz.",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Topic: A quiz on real world"),
                  ],
                ),
                SizedBox(width: 10)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Total questions to be answered"),
                  ],
                ),
                Text("25")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Marks per question"),
                  ],
                ),
                Text("25")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Max time alloted"),
                  ],
                ),
                Text("25")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Negative marks per question"),
                  ],
                ),
                Text("25")
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text(
                  'Am Ready',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => MainHomePage(),
                  //   ),
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
