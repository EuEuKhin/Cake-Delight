import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_uitesting/login.dart';


void main() => runApp(
  MaterialApp(
    home: MyApp(),
  )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              child: Center(
                child: Text("CAKE  DELIGHT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),),
              ),
              height: height/2.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.0, -1.0),
                  end: const Alignment(0.0, 0.6),
                  colors: <Color>[
                    Colors.purple,
                    Colors.blue[200],
                  ])
              ),
            ),
            clipper: WaveClipperTwo(),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top:230,left: 120),
              child: Text("Bakery Shop",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30
              ),),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 500,left:150),
              child: RaisedButton(
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("  Login ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),),
                ),
                color: Colors.blue[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.blue[200])
                ),
                ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 630,left:150),
              child: RaisedButton(
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Sign up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),),
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white)

                ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}