import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MybotNav(),
  ));
}

class MybotNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MybotNavState();
  }
}

class MybotNavState extends State<MybotNav> {
  Color bgcolor = Colors.blueAccent;
  var txt = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: Text(
          "Curved_NavigationBar",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        child: Text(
          txt,
          style: TextStyle(fontSize: 40),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: bgcolor,
        items: [
          Icon(Icons.login),
          Icon(Icons.search),
          Icon(Icons.app_registration),
        ],
        onTap: (indax) {
          setState(() {
            if (indax == 0) {
              bgcolor = Colors.blueAccent;
              txt = "Login Page";
            }
            if (indax == 1) {
              bgcolor = Color.fromARGB(179, 184, 69, 132);
              txt = "Search Page";
            }
            if (indax == 2) {
              bgcolor = Color.fromARGB(179, 17, 182, 141);
              txt = "App_registration";
            }
          });
        },
      ),
    );
  }
}
