import 'package:flutter/material.dart';


class Radio_Button_Eg extends StatefulWidget {
  @override
  _Radio_Button_EgState createState() => _Radio_Button_EgState();
}

class _Radio_Button_EgState extends State<Radio_Button_Eg> {
  String _selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Allows horizontal scrolling
          child: Row(
            children: [
              Container(
                width: 150,
                padding: const EdgeInsets.all(8.0),
                color: Colors.red,
                child: Row(
                  children: [
                    Radio<String>(
                      value: 'Option 1',
                      groupValue: _selectedValue,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedValue = value!;
                        });
                      },
                    ),
                    Text('Option 1'),
                  ],
                ),
              ),
              SizedBox(width: 10), // Space between containers
              Container(
                width: 150,
                padding: const EdgeInsets.all(8.0),
                color: Colors.green,
                child: Row(
                  children: [
                    Radio<String>(
                      value: 'Option 2',
                      groupValue: _selectedValue,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedValue = value!;
                        });
                      },
                    ),
                    Text('Option 2'),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 150,
                padding: const EdgeInsets.all(8.0),
                color: Colors.blue,
                child: Row(
                  children: [
                    Radio<String>(
                      value: 'Option 3',
                      groupValue: _selectedValue,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedValue = value!;
                        });
                      },
                    ),
                    Text('Option 3'),
                  ],
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}