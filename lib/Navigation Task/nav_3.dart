import 'package:flutter/material.dart';
import 'package:jibin_flutter/Navigation%20Task/nav_2.dart';

class nav_3 extends StatefulWidget {
  const nav_3({super.key});

  @override
  State<nav_3> createState() => _nav_3State();
}

class _nav_3State extends State<nav_3> {
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
              SizedBox(width: 20,),
              Text(
                "Get On Board!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),

          Row(
            children: [
              SizedBox(width: 20,),
              Text(
                "Create your profile to start your journey.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(height: 15,),
          SizedBox(
            width: 370,
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: ("Full Name"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: Colors.white,
                  filled: true),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: 370,
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: ("E-Mail"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: Colors.white,
                  filled: true),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: 370,
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.dialer_sip),
                  hintText: ("Phone No"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: Colors.white,
                  filled: true),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: 370,
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  hintText: ("Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: Colors.white,
                  filled: true),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          Container(
            child: Center(
                child: Text("SIGNUP",
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
            height: 5,
          ),
          Text("OR",
            style: TextStyle(fontSize: 20),),
          SizedBox(height: 5,),

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
            height: 10,
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
                  return nav_2();
                },));
              },
              child: Text("Login",
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