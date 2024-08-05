import 'package:flutter/material.dart';
import 'package:jibin_flutter/Navigation/third_page.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "SECOND PAGE",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),
        ),
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Third();
              },));
            },
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(100)),
              child: Icon(Icons.feedback_outlined,size: 40,),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            "Submit Your Feedback",
            style: TextStyle(fontSize: 25, color: Colors.white),
          )),
        ],
      ),
    );
  }
}
