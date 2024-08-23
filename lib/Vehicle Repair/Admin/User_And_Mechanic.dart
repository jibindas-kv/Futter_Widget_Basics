import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User_And_Mechanic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          toolbarHeight: 95,
          backgroundColor: Colors.blue.shade50,
          title: CircleAvatar(
            backgroundImage: AssetImage("assets/Ellipse 1.png"),
            radius: 27,
          ),
          bottom: TabBar(
            padding: EdgeInsets.only(left: 30, right: 30),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.shade400,
            ),
            tabs: [
              Tab(
                child: Text(
                  'User',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Mechanic',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            User(), // Call the first class
            Mechanic(),
            // Call the second class
          ],
        ),
      ),
    );
  }
}

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/Rectangle 13.png"),
                      )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 82),
                          child: Text(
                            "Name",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Text(
                          'Location\nMobile Number\nEmail',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        // itemCount: 20,
      ),
    );
  }
}



class Mechanic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/Rectangle 13.png"),
                      )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 82),
                          child: Text(
                            "Name",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          'Mobile Number\nservice',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        // itemCount: 20,
      ),
    );
  }
}
