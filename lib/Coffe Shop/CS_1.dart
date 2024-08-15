import 'package:flutter/material.dart';
import 'package:jibin_flutter/Coffe%20Shop/CS_2.dart';

import 'CS_2_Home.dart';

class CS_1 extends StatefulWidget {
  const CS_1({super.key});

  @override
  State<CS_1> createState() => _CS_1State();
}

class _CS_1State extends State<CS_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/coffee.png"),
                      fit: BoxFit.fill)),
            ),
            height: 550,
            width: 490,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/coffee.png"), fit: BoxFit.fill)),
          ),
          Text(
            "Coffee so good,\nyour taste buds\n     will love it.",
            style: TextStyle(
                fontSize: 38, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "The best grain, the finest roast, the\n               powerful flavor.",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade600),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CS_2();
              },));
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/google_gif.gif"),
                  ),
                  Text("Sign-In With Google",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ],
              ),
              height: 65,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 3)),
            ),
          ),
        ],
      ),
    );
  }
}
