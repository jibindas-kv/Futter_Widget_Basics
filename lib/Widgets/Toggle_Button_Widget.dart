import 'package:flutter/material.dart';

class Toggle_button extends StatefulWidget {
  const Toggle_button({super.key});

  @override
  State<Toggle_button> createState() => _Toggle_buttonState();
}

class _Toggle_buttonState extends State<Toggle_button> {
  @override
  List<bool> isSelected = [false, true,false];
  Widget build(BuildContext context) {
    return Scaffold(
      body: ToggleButtons(children: [
        Icon(Icons.cloud),
        Icon(Icons.sunny),
        Icon(Icons.sunny_snowing)
      ], isSelected: [],),
    );
  }
}
