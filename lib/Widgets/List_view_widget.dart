import 'package:flutter/material.dart';

class List_view_widget extends StatefulWidget {
  const List_view_widget({super.key});

  @override
  State<List_view_widget> createState() => _List_view_widgetState();
}

class _List_view_widgetState extends State<List_view_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 1000,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.red
            ),
          ),
          Container(
            height: 1000,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.green
            ),
          ),
        ],
      ),

    );
  }
}
