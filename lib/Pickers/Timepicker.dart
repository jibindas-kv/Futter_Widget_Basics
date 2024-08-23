import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Time_picker extends StatefulWidget {
  @override
  _Time_pickerState createState() => _Time_pickerState();
}

class _Time_pickerState extends State<Time_picker> {
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Picker Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selected Time: ${_selectedTime.format(context)}',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectTime(context),
              child: Text('Pick Time'),
            ),
          ],
        ),
      ),
    );
  }
}