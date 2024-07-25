import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 100,
              )
            ],
          ),
          Center(
            child: Text(
              "Welcome Back",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900),
            ),
          ),
          Center(
              child: Text(
            "Enter Your Credential To Login",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          )),
          SizedBox(
            height: 70,
          ),
          Container(
            child: Row(children: [
              SizedBox(
                width: 8,
              ),
              Icon(CupertinoIcons.person),
              SizedBox(width: 8,),
              Text("Username",style: TextStyle(
                fontSize: 18
              ),)
            ]),
            height: 55,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.password),
                SizedBox(width: 8,),
                Text("Password",style: TextStyle(
                    fontSize: 18
                ),)
              ],
            ),
            height: 55,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
                child: Text("Login",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
            height: 55,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(30)),
          ),
          SizedBox(
            height: 120,
          ),
          Text("Forgot Password?",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.purpleAccent)),
          SizedBox(
            height: 120,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Dont have an account?",
                style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black)),
            SizedBox(
              width: 8,
            ),
            Text("Sign Up",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent))
          ]),
        ],
      ),
    );
  }
}
