import 'package:flutter/material.dart';

class page_1 extends StatefulWidget {
  const page_1({super.key});

  @override
  State<page_1> createState() => _page_1State();
}

class _page_1State extends State<page_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/login page Image.jpg"),fit: BoxFit.fill)),
              )
            ],
          ),
          SizedBox(height: 30,),
          Center(
            child: Text(
              "Hello!",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900,fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(
                width: 90,
              ),
            Text(
            "Please Login Or Sign UpTo \nStart The Application",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          )
              ]
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
          Container(
            child: Center(
                child: Text("Login",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
            height: 45,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black,width: 3)
            ),
          ),
              SizedBox(
                width: 45,
              ),
              Container(
                child: Center(
                    child: Text("Sign Up",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))),
                height: 45,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black,width: 3)
                ),
              ),
              ]),
          SizedBox(height: 30,),
          Center(
            child: Text(
              "Or Via Social Media",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage("assets/facebook.png"),fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(100)
                ),

              ),
              SizedBox(width: 20,),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    image: DecorationImage(
                        image: AssetImage("assets/google+.png"),fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(100)),
              ),
              SizedBox(width: 20,),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage("assets/linkedin.png"),fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(100)),
              ),
              SizedBox(width: 20,),
            ],
          )

        ],
      ),
    );
  }
}
