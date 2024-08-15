import 'package:flutter/material.dart';

class Togglewidget extends StatefulWidget {
  const Togglewidget({super.key});

  @override
  State<Togglewidget> createState() => _TogglewidgetState();
}

class _TogglewidgetState extends State<Togglewidget> {
  List<bool> isSelected = [false, true,false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(color: Colors.grey,
          child: ToggleButtons(
            isSelected: isSelected,
            selectedColor: Colors.blue,
            color: Colors.red,
            fillColor: Colors.white,
            children: <Widget>[
              Icon(Icons.cloud),
              Icon(Icons.sunny),
            Icon(Icons.sunny_snowing),
            ],
            onPressed: (int newIndex){
              setState(() {
                for (int index =0;index< isSelected.length;index++){
                  if (index == newIndex){
                    isSelected[index]=true;
                  } else {
                    isSelected[index]= false;
                  }
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
