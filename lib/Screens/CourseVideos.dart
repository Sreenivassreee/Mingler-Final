import 'package:flutter/material.dart';

class CourseVideos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Text("Course Videos"),
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
      //     child: Text("Course Videos"),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Class. This group is made especially to make class interactive and authentic. We have taken care to suggest videos which are shorter, high quality with content. The timing of suggested videos  would be a day earlier, so that we take care that you are better prepared for the class and after the class.",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "The order of the videos would be from Beginner to advanced level, but we have taken care not to make videos consume more of your class or personal time, hence the videos suggested would be between 1min-12/13minutes.",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Happy making classroom learning great again 🙂",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
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
                    ],
                  ),
                ),
              ),
              video(context),
              video(context),
              video(context),
              video(context),
              video(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget video(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 17,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Mingler-Where learning happens",
                          ),
                        ],
                      ),
                      Text("5:52pm"),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 50,
              ),
              child: Column(
                children: [
                  Text(
                    "https://www.youtube.com/watch?v=ZgpzfLNY5ZM&list=RDZgpzfLNY5ZM&start_radio=1",
                    style: TextStyle(
                      color: Color(0xFF2A07FC),
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 50, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.play_arrow),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "YouTube",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Channel name: GeekyRanjith",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Joker | Linkin Park - Rebellion [Music Video]",
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_up_alt,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text("15"),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_down_alt,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text("15"),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.comment,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text("15"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // )
          ],
        ),
      ),
    );
  }
}
