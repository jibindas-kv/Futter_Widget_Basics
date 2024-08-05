import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "THIRD PAGE",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
    child: Column(
    children: [
    SizedBox(
      height: 80,
    ),
    Icon(Icons.feedback_outlined,color: Colors.white,size: 40,),
    SizedBox(height: 20,),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    "Feedback Form",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: Colors.white,
    fontStyle: FontStyle.italic),
    ),
    ],
    ),
    SizedBox(
    height: 25,
    ),
    Padding(
    padding: const EdgeInsets.all(20.0),
    child: TextFormField(
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.person),
    suffixIcon: Icon(Icons.arrow_forward),
    hintText: ("Your Name"),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10)),
    fillColor: Colors.white,
    filled: true),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(20.0),
    child: TextFormField(
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.dialer_sip),
    suffixIcon: Icon(Icons.arrow_forward),
    hintText: ("Mobile Number"),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10)),
    fillColor: Colors.white,
    filled: true),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(20.0),
    child: TextFormField(
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.mail),
    suffixIcon: Icon(Icons.arrow_forward),
    hintText: ("Email Address"),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10)),
    fillColor: Colors.white,
    filled: true),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(20.0),
    child: TextFormField(
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.feedback_outlined),
    suffixIcon: Icon(Icons.arrow_forward),
    hintText: ("Enter Your Feedback"),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10)),
    fillColor: Colors.white,
    filled: true),
    ),
    ),
    SizedBox(height: 20,),
    ElevatedButton(onPressed: () {
    print("Details Submitted");
    }, child: Text("Submit",style: TextStyle(fontSize: 18),))
    ],
    ),
    ),
    );
  }
}
