import 'package:flutter/material.dart';

class Squere_container extends StatefulWidget {
  const Squere_container({super.key});

  @override
  State<Squere_container> createState() => _Squere_containerState();
}

class _Squere_containerState extends State<Squere_container> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            child: Center(
                child: Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.brown, ),
                  child: Center(
                      child: Center(
                          child: Container(
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(0)),
                            child: Center(
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.orange[100], borderRadius: BorderRadius.circular(0)),
                              ),
                            ),
                          ))),
                )),
            height: 500,
            decoration: BoxDecoration(
                color: Colors.blue,
            ),
            width: 500,
          )),
    );
  }
}