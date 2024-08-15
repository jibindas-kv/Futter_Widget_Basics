import 'package:flutter/material.dart';

class List_view_builder_widget extends StatefulWidget {
  const List_view_builder_widget({super.key});

  @override
  State<List_view_builder_widget> createState() => _List_view_builder_widgetState();
}

class _List_view_builder_widgetState extends State<List_view_builder_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        // return ListTile(
        //   title: Text("Name"),subtitle: Text("Status Like This"),
        //   leading: CircleAvatar(backgroundImage: AssetImage("assets/user.png"),),
        // );
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20,
            width: double.infinity,
            color: Colors.red,
          ),
        );
      },
      // itemCount: 20,
      ),
    );
  }
}
