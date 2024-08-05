import 'package:flutter/material.dart';
import 'package:jibin_flutter/Navigation/second_page.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "FIRST PAGE",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Second();
                        },
                      ));
                    },
                    child: Text(
                      "Go To Second Page",
                      style: TextStyle(fontSize: 25),
                    )),
              ],
            ),
          ],
        ));
  }
}
