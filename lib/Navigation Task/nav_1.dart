import 'package:flutter/material.dart';
import 'package:jibin_flutter/Navigation%20Task/nav_2.dart';
import 'package:jibin_flutter/Navigation%20Task/nav_3.dart';

class nav_1 extends StatefulWidget {
  const nav_1({super.key});

  @override
  State<nav_1> createState() => _nav_1State();
}

class _nav_1State extends State<nav_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          SizedBox(
            height: 160,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 280,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/loop.gif"),
                        fit: BoxFit.fill)),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Build Awesome Apps",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let's put your creativity on the\n       development highway",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return nav_2();
                },));
              },
              child: Container(
                child: Center(
                    child: Text("LOGIN",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))),
                height: 55,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(color: Colors.black, width: 3)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return nav_3();
                },));
              },
              child: Container(
                child: Center(
                    child: Text("SIGNUP",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                height: 55,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(color: Colors.black, width: 3)),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
