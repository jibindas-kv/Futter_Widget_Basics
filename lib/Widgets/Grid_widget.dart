import 'package:flutter/material.dart';

class Grid_widget extends StatefulWidget {
  const Grid_widget({super.key});

  @override
  State<Grid_widget> createState() => _Grid_widgetState();
}

class _Grid_widgetState extends State<Grid_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of items per row
          mainAxisSpacing: 10, // Spacing between rows
          crossAxisSpacing: 10, // Spacing between columns
          childAspectRatio: 1.0, // Aspect ratio of the items
        ),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              )

            ],

          );
        },
      ),
    );
  }
}
