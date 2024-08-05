import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white,image: DecorationImage(
              image: AssetImage("assets/Mountain3.png"),fit: BoxFit.fill
            )
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Yosemite",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                width: 150,
              ),
              Icon(
                CupertinoIcons.money_dollar,
                size: 40,
                color: Colors.deepPurpleAccent,
              ),
              Text(
                "250",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Icon(
                CupertinoIcons.location_solid,
                color: Colors.deepPurpleAccent,
              ),
              Text(
                "USA,Cascado",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.deepPurpleAccent),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.yellow,
              ),
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.yellow,
              ),
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.yellow,
              ),
              Icon(
                CupertinoIcons.star_fill,
                color: Colors.yellow,
              ),
              Icon(
                CupertinoIcons.star,
                color: Colors.grey,
              ),
              Text(
                "14.01",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Text(
                "People",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Text(
                "Number of people in your group",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                )
              ),
              Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  )
              ),
              Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  )
              ),
              Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  )
              ),
              Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: Center(
                    child: Text(
                      "5",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  )
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Text(
                "Description",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Text(
                  "Yosemite National Park is located in central \n Serana Nevada in the US state of California.it\n is located near the wild protected areas.",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade600),)
            ],
          ),
          SizedBox(height: 40,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                child: Icon(
                  CupertinoIcons.heart,
                  color: Colors.black,
                ),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.deepPurpleAccent,width: 4)
                ),
              ),
              SizedBox(width: 20,),
              Container(
                  height: 70,
                  width: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurpleAccent),
                  child: Center(
                    child: Text(
                      "Book Trip Now",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}