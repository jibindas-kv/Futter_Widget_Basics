import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibin_flutter/Fruits/Fruit_page2.dart';

class Fruit_page1 extends StatefulWidget {
  const Fruit_page1({super.key});

  @override
  State<Fruit_page1> createState() => _Fruit_page1State();
}

class _Fruit_page1State extends State<Fruit_page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 250,
                width: 185,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange),
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/Sweet_marian.jpg"),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Sweet Marian",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money_sharp,
                                color: Colors.black,
                                size: 15,
                                weight: 10,
                              ),
                              Text(
                                "2.15",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 15),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 157, left: 136),
                            child: Container(
                              child: Icon(
                                Icons.done_rounded,
                                color: Colors.white,
                              ),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(100),
                                      bottomRight: Radius.circular(40)),
                                  color: Colors.orange),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 152),
                      child: Icon(
                        Icons.more_vert_sharp,
                        color: Colors.orange,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.pink),
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("assets/Strawberry.jpg"),
                            fit: BoxFit.fill)),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Strawberrys",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money_sharp,
                                    color: Colors.black,
                                    size: 15,
                                    weight: 10,
                                  ),
                                  Text(
                                    "1.52",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 107, left: 133),
                                child: Container(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.pinkAccent,
                                  ),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomRight: Radius.circular(40)),
                                    border:
                                        Border.all(color: Colors.pinkAccent),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, left: 152),
                          child: Icon(
                            Icons.more_vert_sharp,
                            color: Colors.pinkAccent,
                          ),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 265),
                child: Container(
                    height: 200,
                    width: 185,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.indigo),
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("assets/Grapes.jpg"),
                            fit: BoxFit.fill)),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Grapes",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money_sharp,
                                    color: Colors.black,
                                    size: 15,
                                    weight: 10,
                                  ),
                                  Text(
                                    "2.15",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 107, left: 133),
                                child: Container(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.indigo.shade900,
                                  ),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomRight: Radius.circular(40)),
                                    border: Border.all(
                                        color: Colors.indigo.shade900),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, left: 152),
                          child: Icon(
                            Icons.more_vert_sharp,
                            color: Colors.indigo.shade900,
                          ),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 215, left: 200),
                child: Container(
                    height: 250,
                    width: 185,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("assets/Orange.jpg"),
                            fit: BoxFit.fill)),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Orange",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money_sharp,
                                    color: Colors.black,
                                    size: 15,
                                    weight: 10,
                                  ),
                                  Text(
                                    "1.50",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 157, left: 136),
                                child: Container(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.orange,
                                  ),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomRight: Radius.circular(40)),
                                    border: Border.all(color: Colors.orange),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, left: 152),
                          child: Icon(
                            Icons.more_vert_sharp,
                            color: Colors.orange,
                          ),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 480),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Fruit_page2();
                    },));
                  },
                  child: Container(
                      height: 250,
                      width: 185,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/Green_apple.jpg"),
                              fit: BoxFit.cover)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      " GreenApple",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.attach_money_sharp,
                                      color: Colors.black,
                                      size: 15,
                                      weight: 10,
                                    ),
                                    Text(
                                      "1.50",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 157, left: 136),
                                  child: Container(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.green,
                                    ),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(100),
                                          bottomRight: Radius.circular(40)),
                                      border: Border.all(color: Colors.green),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16, left: 152),
                            child: Icon(
                              Icons.more_vert_sharp,
                              color: Colors.green,
                            ),
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 480, left: 200),
                child: Container(
                  height: 200,
                  width: 185,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow.shade900),
                      color: Colors.yellow.shade200,
                      borderRadius: BorderRadius.circular(20),image: DecorationImage(
                  image: AssetImage("assets/Mango.png"),
                    fit: BoxFit.fill)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Mango",
                            style:
                            TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.attach_money_sharp,
                            color: Colors.black,
                            size: 15,
                            weight: 10,
                          ),
                          Text(
                            "2.15",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(top: 107, left: 133),
                        child: Container(
                          child: Icon(
                            Icons.add,
                            color: Colors.yellow.shade900,
                          ),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100),
                                bottomRight: Radius.circular(40)),
                            border: Border.all(
                                color: Colors.yellow.shade900),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 152),
                  child: Icon(
                    Icons.more_vert_sharp,
                    color: Colors.yellow.shade900,
                  ),
                )
              ],
            )),
      ),
              Padding(
                  padding: const EdgeInsets.only(top: 695, left: 200),
                  child: SizedBox(
                    height: 100,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
