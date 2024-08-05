import 'package:flutter/material.dart';

class Text_Button extends StatefulWidget {
  const Text_Button({super.key});

  @override
  State<Text_Button> createState() => _Text_ButtonState();
}

class _Text_ButtonState extends State<Text_Button> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Center(
    //       child: TextButton(
    //           onPressed: () {
    //             print("Console Print");
    //           },
    //           child: Text(
    //             "SUBMIT",
    //             style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.red),
    //           ))),
    // );
    //
    return Scaffold(
      body: Center(
        child: TextButton.icon(onPressed: () {

        }, label: Text("Submit",style: TextStyle(fontSize: 20),),),
      ),
    );
  }
}
