import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[100],
          
          title: Text("THE BEST TASTY CAKES & JUICE Testing",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),),
        ),
        drawer: Drawer(
          elevation: 0.0,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text("CAKE DELIGHT")
              ),
              ListTile(
                title: Text("Hello"),
              ),
              ListTile(
                title: Text("Hello1"),
              ),
              ListTile(
                title: Text("Hello3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}