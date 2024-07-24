

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Second_ui extends StatefulWidget {
  const Second_ui({super.key});

  @override
  State<Second_ui> createState() => _Second_uiState();
}

class _Second_uiState extends State<Second_ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(height: 150,width: 400,decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10)
              ),
                  child: Center(
                    child: Text("#8D43B3",style: TextStyle(
                        fontSize: 25,color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),
                  ),)],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,width: 195,decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                ),
                  child: Center(
                    child: Text("#2AA650",style: TextStyle(
                      fontSize: 25,color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
        
                  children: [Container(
                    height: 30,width: 195,decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
                  ),
                    child: Center(
                      child: Text("#58AAE8",style: TextStyle(
                          fontSize: 25,color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(height: 110,width: 195,decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                  ),
                    child: Center(
                      child: Text("#E74E33",style: TextStyle(
                          fontSize: 25,color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    ),)],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(height: 150,width: 400,decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)
              ),
                child: Center(
                  child: Text("#2A650",style: TextStyle(
                      fontSize: 25,color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                ),)],
            )
          ],
        ),
      ),
    );
  }
}
