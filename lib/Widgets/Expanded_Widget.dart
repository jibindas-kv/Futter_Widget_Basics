import 'package:flutter/material.dart';

class Expanded_widget extends StatefulWidget {
  const Expanded_widget({super.key});

  @override
  State<Expanded_widget> createState() => _Expanded_widgetState();
}

class _Expanded_widgetState extends State<Expanded_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 200,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/facebook.png"),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/facebook.png"),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/facebook.png"),
                  ),
                ],
              ),
              width: 200,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
