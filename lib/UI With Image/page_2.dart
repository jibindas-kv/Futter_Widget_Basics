import 'package:flutter/material.dart';

class Page_2 extends StatefulWidget {
  const Page_2({super.key});

  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80,),
        Row(
          children: [
            SizedBox(width: 20,),
        Text(
        "Welcome Back!",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
      ),]),
          Row(
              children: [
                SizedBox(width: 20,),
                Text(
                  "Sign In To Continue",
                  style: TextStyle(fontSize: 18,color: Colors.grey.shade800),
                ),]),
          SizedBox(height: 60,),
          Row(
              children: [
                SizedBox(width: 20,),
                Text(
                  "Username",
                  style: TextStyle(fontSize:25, fontWeight: FontWeight.w900),
                ),]),
          SizedBox(height: 15,),
          Row(
              children: [
                SizedBox(width: 20,),
                Text(
                  "_____________________________",
                  style: TextStyle(fontSize:25, color: Colors.grey),
                ),]),
          SizedBox(height: 60,),
          Row(
              children: [
                SizedBox(width: 20,),
                Text(
                  "Password",
                  style: TextStyle(fontSize:25, fontWeight: FontWeight.w900),
                ),]),
          SizedBox(height: 15,),
          Row(
              children: [
                SizedBox(width: 20,),
                Text(
                  "_____________________________",
                  style: TextStyle(fontSize:25, color: Colors.grey),
                ),]),
          SizedBox(height: 90,),
          Container(
            child: Center(
                child: Text("Login Now",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
            height: 45,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black,width: 2)
            ),
          ),
          SizedBox(height: 25,),
          Text(
            "Forgot Password ?",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 60,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100)),
              ),
              SizedBox(width: 20,),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(100)),
              ),
              SizedBox(width: 20,),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100)),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Dont have an account?",
                style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800)),
            SizedBox(
              width: 4,
            ),
            Text("Sign Up",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))
          ]),

        ],
      ),
    );
  }
}
