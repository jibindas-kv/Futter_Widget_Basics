import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drop_down_button_widget extends StatefulWidget {
  @override
  _Drop_down_button_widgetState createState() => _Drop_down_button_widgetState();
}

class _Drop_down_button_widgetState extends State<Drop_down_button_widget> {
  String _selectedItem = 'RED';

  final List<String> _options = [
    'RED',
    'GREEN',
    'BLUE',
    'YELLOW',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _selectedItem == 'RED'
            ? Colors.red
            : _selectedItem == 'GREEN'
            ? Colors.green
            : _selectedItem == 'BLUE'
            ? Colors.blue
            : Colors.yellow,
        title: Center(child: Text('DropdownButton Example',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: _selectedItem,
              items: _options.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue!;
                });
              },
            ),
            SizedBox(height: 15),
            Text('Selected: $_selectedItem',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 30,),
            // Container(
            //     height: 20,
            //     width: 100,
            //     color: _selectedItem == 'RED'
            //         ? Colors.red
            //         : _selectedItem == 'GREEN'
            //         ? Colors.green
            //         : _selectedItem == 'BLUE'
            //         ? Colors.blue
            //         : Colors.yellow)
          ],
        ),
      ),
      backgroundColor: _selectedItem == 'RED'
          ? Colors.red
          : _selectedItem == 'GREEN'
          ? Colors.green
          : _selectedItem == 'BLUE'
          ? Colors.blue
          : Colors.yellow,
    );
  }
}