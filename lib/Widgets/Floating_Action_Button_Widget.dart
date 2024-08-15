import 'package:flutter/material.dart';

class Floating_action_widget extends StatefulWidget {
  const Floating_action_widget({super.key});

  @override
  State<Floating_action_widget> createState() => _Floating_action_widgetState();
}

class _Floating_action_widgetState extends State<Floating_action_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {


        },
      ),
    );
  }
}
