import 'package:flutter/material.dart';
import 'package:flutter_uitesting/detail.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailcontroller = new TextEditingController();
  final passwordcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 370,
                    left: 300,
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 30,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.0),
                    ),
                    color: Colors.blue[100],
                    image: DecorationImage(image: AssetImage("images/bb.png"))),
              )),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        onChanged: (value){
                          print(emailcontroller.text);
                        },
                        controller: emailcontroller,
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        onChanged: (value) {
                          // passwordcontroller.text = value;
                          // print("${passwordcontroller.text}");
                          print(passwordcontroller.text);
                        },
                        controller: passwordcontroller,
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.blue[200],
                      child: MaterialButton(
                        onPressed: () => login(),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                        onPressed: () {}, child: Text("forgetpassword?")),
                  ],
                ),
              )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue[200],
          onPressed: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.navigation,
          ),),
      ),
    );
  }

  login() {
    if(emailcontroller.text == "eueu@gmail.com" && passwordcontroller.text == "eueu") {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => DetailPage()) );
    } else {
      return showAlertDialog(
       context,
      );
          }
        }
      
        showAlertDialog(BuildContext context) {
          AlertDialog alert =AlertDialog(
            title: Text("Error"),
            content: Text("invalidate email & password"),
            actions: <Widget>[
              FlatButton(
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => Login()) );
                }, 
                child: Text("Ok"))
            ],
          );
          showDialog(
            context: context,
         builder: (BuildContext context) {
         return alert;
    },
            );
        }
}
