import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibin_flutter/Fruit%20Buy%20Ui/Banana.dart';
import 'package:jibin_flutter/Fruit%20Buy%20Ui/Fruit_home.dart';
import 'package:jibin_flutter/Fruit%20Buy%20Ui/Fruit_navigation.dart';

class Drinks extends StatefulWidget {
  const Drinks({super.key});

  @override
  State<Drinks> createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 350,
                width: 420,
                decoration: BoxDecoration(color: Colors.yellow,
                  image: DecorationImage(image: AssetImage("assets/Drink_1.jpg"),fit: BoxFit.fill),),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, top: 53),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Fruit_navigation();
                          },
                        ));
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 255,),

                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                    SizedBox(width: 30,),



                    Icon(
                      CupertinoIcons.heart,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 320),
                child: Container(
                  height: 500,
                  width: 430,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  child: Stack(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                                border: Border.all(color: Colors.white)),
                            child: Center(
                                child: Text(
                                  'Info',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 15),
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.red.shade900,
                                    strokeAlign: BorderSide.strokeAlignCenter)),
                            child: Center(
                                child: Text(
                                  'Packages',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.pink),
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                                border: Border.all(color: Colors.white)),
                            child: Center(
                                child: Text(
                                  'Ingredience',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 15),
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                                border: Border.all(color: Colors.white)),
                            child: Center(
                                child: Text(
                                  'Photo',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 15),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 100),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/Drink_2.jpg"),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/Drink_3.jpg"),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/Drink_4.jpg"),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Container(
                                  width: 250,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/Combo_food.jpg"),fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                      color: Colors.blue),
                                ),
                                Container(
                                  width: 250,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                      color: Colors.white),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 10),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Combo Food Hot',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star_border,
                                                  size: 18,
                                                ),
                                                Text(
                                                  '4.8(233 ratings)',
                                                  style: TextStyle(
                                                      color: Colors.grey[800]),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 50),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.timer_outlined,
                                                  size: 18,
                                                ),
                                                Text(
                                                  '60 Minute',
                                                  style: TextStyle(
                                                      color: Colors.grey[800]),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.attach_money,
                                            color: CupertinoColors.systemYellow,
                                            size: 18,
                                          ),
                                          Text(
                                            '67.00',
                                            style: TextStyle(
                                                color: CupertinoColors
                                                    .systemYellow,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 400, left: 25),
                      child: Container(
                        height: 60,
                        width: 360,
                        decoration: BoxDecoration(
                            color: CupertinoColors.systemYellow,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(child: Text('Order now',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 470, left: 170),
                      child: Text('Add to Cart',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink[900]),),
                    )
                  ]),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}