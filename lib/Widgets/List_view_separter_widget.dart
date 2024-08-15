import 'package:flutter/material.dart';

class List_view_separter_widget extends StatefulWidget {
  const List_view_separter_widget({super.key});

  @override
  State<List_view_separter_widget> createState() => _List_view_separter_widgetState();
}

class _List_view_separter_widgetState extends State<List_view_separter_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context, index) {
        return Text("Heading");

      }, separatorBuilder: (context, index) {
        return CircleAvatar(
          backgroundImage: AssetImage("assets/profile1.jpg"),
        );

      }, itemCount: 5)
    );
  }
}
