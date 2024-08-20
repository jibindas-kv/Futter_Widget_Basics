import 'package:flutter/material.dart';
import 'package:jibin_flutter/Car%20Rent%20Ui/Car_rent_bottom_navigation_bar.dart';

class Get_Started extends StatefulWidget {
  const Get_Started({super.key});

  @override
  State<Get_Started> createState() => _Get_StartedState();
}

class _Get_StartedState extends State<Get_Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Car_Quick.jpg"),fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 550, left: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "Let's find your\nfavourite car here!",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "Rent your ride in a flash!Quick,easy,and\nready for adventure.",
                      style: TextStyle(
                          fontSize: 18,

                          color: Colors.grey.shade400),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 775,left:30),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Car_rent_bottom_navigation_bar();
                },));
              },
              child: Container(child: Padding(
                padding: const EdgeInsets.only(left: 110,top: 10),
                child: Text("Get Started",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 3)),
              ),
            ),
          )
        ],
      ),
    );
  }
}