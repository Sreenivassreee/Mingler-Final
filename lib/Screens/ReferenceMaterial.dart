import 'package:flutter/material.dart';

class ReferenceMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: Text("Reference material"),
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
      //   elevation: 0.0,
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back_ios),
      //     color: Colors.black,
      //     onPressed: Navigator.of(context).pop,
      //   ),
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "Reference material",
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 20,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: ListView(
            children: [
              link(
                  index: 1, pdfName: "Artificial intelligence in robotics.pdf"),
              link(
                  index: 2,
                  pdfName: "Automation in manufacturing sector data.xls"),
              link(
                  index: 3, pdfName: "Artificial intelligence in robotics.pdf"),
              link(
                  index: 4,
                  pdfName: "Automation in manufacturing sector data.xls"),
              link(
                  index: 5, pdfName: "Artificial intelligence in robotics.pdf"),
            ],
          ),
        ),
      ),
    );
  }

  Widget link({int index, String pdfName}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Text("$index"),
          SizedBox(width: 10),
          Text(
            pdfName,
            style: TextStyle(
              color: Color(0XFF005EB5),
            ),
          ),
        ],
      ),
    );
  }
}
