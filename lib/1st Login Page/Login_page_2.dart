import 'package:flutter/material.dart';

class login_page_2 extends StatefulWidget {
  const login_page_2({super.key});

  @override
  State<login_page_2> createState() => _login_page_2State();
}

class _login_page_2State extends State<login_page_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 80,
              )
            ],
          ),
          Center(
            child: Text(
              "Sign up",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900),
            ),
          ),
          Center(
              child: Text(
            "Create your account",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          )),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Row(children: [
              SizedBox(
                width: 8,
              ),
              Icon(Icons.person),
              SizedBox(
                width: 8,
              ),
              Text(
                "Username",
                style: TextStyle(fontSize: 18),
              )
            ]),
            height: 55,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.email),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            height: 55,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.password),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            height: 55,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.person_2),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Confirm Password",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            height: 55,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(height: 20,),
          Container(
            child: Center(
                child: Text("Sign up",
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
          SizedBox(height: 10,),
          Text("or",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.purple)),
          SizedBox(height: 10,),
          Container(
            child: Center(
                child: Text("Sign In With Google",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple))),
            height: 55,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.purple,width: 4)
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Already have an account?",
                style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black)),
            SizedBox(
              width: 5,
            ),
            Text("Login",
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
