import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Text("Notes"),
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
      //     child: Text("Notes"),
      //   ),
      // ),
      body: SingleChildScrollView(child: AssignmentsDetails()),
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

    List data2 = List();

    data.add("");
    data.add(null);

    data.add(null);
    data.add(null);
    data.add(null);
    data.add(null);
    data2.add("https://www.mingler.tech/app/dashboard");
    data2.add("https://www.mingler.tech/app/dashboard");

    data2.add("https://www.mingler.tech/app/dashboard");

    data2.add("https://www.mingler.tech/app/dashboard");

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
                                      padding: const EdgeInsets.only(
                                          top: 10.0, left: 25),
                                      child: Container(
                                        child: ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          shrinkWrap: true,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          itemCount: data2.length,
                                          itemBuilder: (context, i) {
                                            return Container(
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: CircleAvatar(
                                                      radius: 6,
                                                      backgroundColor:
                                                          Colors.black,
                                                    ),
                                                  ),
                                                  Text(
                                                    data2[i] ?? " ",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Color(0XFF0066FF),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
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
