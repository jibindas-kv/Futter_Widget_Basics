import 'package:flutter/material.dart';

class Card_widget extends StatefulWidget {
  const Card_widget({super.key});

  @override
  State<Card_widget> createState() => _Card_widgetState();
}

class _Card_widgetState extends State<Card_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
          shadowColor: Colors.red,
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Hello"),
        ),);
      },),
    );
  }
}
