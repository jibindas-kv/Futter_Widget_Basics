import 'package:flutter/material.dart';
import 'package:jibin_flutter/Vehicle%20Repair/Admin/Vehicle_Navigation.dart';

class Vehicle_login extends StatefulWidget {
  const Vehicle_login({super.key});

  @override
  State<Vehicle_login> createState() => _Vehicle_loginState();
}

class _Vehicle_loginState extends State<Vehicle_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/tow1.png"))),
                    ),
                  ),
                  Center(
                      child: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ))
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text(
                        'Enter Username',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Username',
                          focusColor: Colors.white,

                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(0)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [

                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text(
                        'Enter Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter Passsword',
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(0)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Vehicle_Navigation();
                    },));
                  },
                  child: Container(
                    height: 55,
                    width: 220,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 18,
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
