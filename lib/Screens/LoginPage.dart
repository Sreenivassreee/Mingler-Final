import 'package:flutter/material.dart';
import 'package:minglerapp/Screens/LectureScreens/LectureMainHomePage.dart';
import 'package:minglerapp/Screens/MainHomePage.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String user = "admin";
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 50),
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 30,
                    // color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    // enabledBorder: UnderlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.white)),

                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: 'User Name',
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {},
                    // textColor: Colors.white,
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    textColor: Colors.blue,
                    child: Text('Reset password'),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                padding:
                    EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    if (user == "user") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainHomePage(),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LectureMainHomePage(),
                        ),
                      );
                    }
                    print(nameController.text);
                    print(passwordController.text);
                  },
                ),
              ),
              SizedBox(
                height: 60,
                width: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
