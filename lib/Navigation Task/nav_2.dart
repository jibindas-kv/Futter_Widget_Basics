import 'package:flutter/material.dart';
import 'package:jibin_flutter/Navigation%20Task/nav_3.dart';

class nav_2 extends StatefulWidget {
  const nav_2({super.key});

  @override
  State<nav_2> createState() => _nav_2State();
}

class _nav_2State extends State<nav_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Row(
            children: [
              SafeArea(
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/loop.gif"),
                        fit: BoxFit.fill)),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Welcome Back,",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Make it work,make it right,make it fast.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 370,
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: ("E-mail"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: Colors.white,
                  filled: true),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          SizedBox(
            width: 370,
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: ("Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: Colors.white,
                  filled: true),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 235,
              ),
              Text("Forgot Password?",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Center(
                child: Text("LOGIN",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
            height: 55,
            width: 370,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black, width: 3)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "OR",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
                child: Text("Sign-In With Google",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
            height: 55,
            width: 370,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: Colors.black, width: 3)),
          ),
          SizedBox(
            height: 15,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Dont have an account?",
                style: TextStyle(
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black)),
            SizedBox(
              width: 8,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return nav_3();
                },));
              },
              child: Text("Sign Up",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
            )
          ]),
        ],
      ),
    );
  }
}
