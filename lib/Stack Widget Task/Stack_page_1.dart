import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stack_page_1 extends StatefulWidget {
  const Stack_page_1({super.key});

  @override
  State<Stack_page_1> createState() => _Stack_page_1State();
}

class _Stack_page_1State extends State<Stack_page_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          children: [
            Stack(children: [
              SizedBox(
                height: 90,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Text(
                      "Tonight",
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 280, top: 50),
                    child: Container(
                      height: 90,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade600,
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 30),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                                child: Text(
                              "3",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, top: 8),
                                child: Icon(
                                  CupertinoIcons.money_dollar,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 26),
                                child: Text(
                                  "32",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, left: 4),
                                child: Text(
                                  "Total Price",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 6),
                child: Row(
                  children: [
                    Text(
                      "Monday,November 25",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade500),
                    )
                  ],
                ),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white, width: 3)),
                  child: Center(
                      child: Text('Promotions',
                          style: TextStyle(color: Colors.white))),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Free Drink',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text('Happy Hour', style: TextStyle(color: Colors.white))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                height: 490,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/Blackberry.jpg"),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 400,left: 20),
                      child: Text(
                        "Blackberry",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 438,left: 20),
                      child: Text(
                        "Fresh Drink",
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
