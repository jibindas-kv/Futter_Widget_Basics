import 'package:flutter/material.dart';

class Textfield_widget extends StatefulWidget {
  const Textfield_widget({super.key});

  @override
  State<Textfield_widget> createState() => _Textfield_widgetState();
}

class _Textfield_widgetState extends State<Textfield_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 50),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person), //First Icon
                suffixIcon: Icon(Icons.arrow_forward),
                hintText: ("Enter Your Name"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                fillColor: Colors.white,
                filled: true, //End Icon
              ),
            ),
          )
        ],
      ),
    );
  }
}
