import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Snackbar_widget extends StatelessWidget {
  // function
  void _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('This is a SnackBar!'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Code to undo the change.
        },
      ),
    );

    // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showSnackBar(context);
          },
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}