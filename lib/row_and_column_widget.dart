import 'package:flutter/material.dart';

class Column_widget extends StatefulWidget {
  const Column_widget({super.key});

  @override
  State<Column_widget> createState() => _Column_widgetState();
}

class _Column_widgetState extends State<Column_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.amberAccent,
          ),
          Container(
            height: 100,

            width: 100,
            color: Colors.black,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
