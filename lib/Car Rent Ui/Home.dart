import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibin_flutter/Car%20Rent%20Ui/Get_Started.dart';
import 'package:jibin_flutter/Car%20Rent%20Ui/Profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child:
        ListView(
          children: [

        Column(
          children: [
            Stack(children: [
              Row(
                children: [
                  Text("Hi Karthy👋",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Text("Let's Find Your Favorite Car here",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 285, top: 15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Get_Started();
                        },));
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        child: Icon(
                          Icons.notifications_none_rounded,
                          color: Colors.blue.shade900,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white10,
                            border: Border.all(width: 1)),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Profile();
                        },));
                      },
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage("assets/person.jpg"),
                      ),
                    )
                  ],
                ),
              )
            ]),
            SizedBox(
              height: 15,
            ),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(right: 70, top: 1),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        color: Colors.grey.shade900,
                        size: 30,
                      ),
                      suffixIcon: Icon(
                        CupertinoIcons.mic,
                        color: Colors.grey.shade900,
                        size: 25,
                      ),
                      hintText: 'Search',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 320),
                child: Container(
                  width: 60,
                  height: 57,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                      image: DecorationImage(
                          image: AssetImage("assets/car_rent_settings.png"),
                          fit: BoxFit.fill)),
                ),
              ),
            ]),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  height: 150,
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("assets/deal.png"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "Brands",
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  width: 220,
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 15,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey.shade600,
                  size: 20,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            height: 60,
                            width: 60,
                            color: Colors.white,
                            child: Image(
                                image: AssetImage("assets/mercedes.png"))),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mercedes",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            height: 60,
                            width: 60,
                            color: Colors.white,
                            child: Image(image: AssetImage("assets/bmw.png"))),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "BMW",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            height: 60,
                            width: 60,
                            color: Colors.white,
                            child:
                                Image(image: AssetImage("assets/porsche.png"))),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Porsche",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            height: 60,
                            width: 60,
                            color: Colors.white,
                            child:
                                Image(image: AssetImage("assets/renult.png"))),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Renult",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "Popular Cars",
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 200,
                          width: 380,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/mercedes_s_class.jpg"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Mercedes S-class",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 28,
                        ),
                        Text(
                          "4.8",
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          "Automatic",
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        VerticalDivider(
                          thickness: 3,
                          color: Colors.black,
                          width: 15,
                        ),
                        Text(
                          "5 seat",
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        VerticalDivider(
                          thickness: 3,
                          color: Colors.black,
                          width: 15,
                        ),
                        Text(
                          "Diseal",
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        VerticalDivider(
                          thickness: 3,
                          color: Colors.black,
                          width: 15,
                        ),
                        Icon(Icons.currency_rupee),
                        Text(
                          "60,000",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
          ],
        )
      ),
    );
  }
}
