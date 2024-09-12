import 'package:flutter/material.dart';
import 'package:jibin_flutter/Fruits/Fruit_page1.dart';
import 'package:jibin_flutter/Whatsapp/Whatsapp_home.dart';

class Fruit_tabbar extends StatefulWidget {
  const Fruit_tabbar({super.key});

  @override
  State<Fruit_tabbar> createState() => _Fruit_tabbarState();
}

class _Fruit_tabbarState extends State<Fruit_tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 20,
              backgroundColor: Colors.white,
            ),
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Container(
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(138, 135, 145, 1)),
                          prefixIcon: Icon(Icons.search),
                          // fillColor: Color.fromARGB(36, 43, 49, 1),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.lightGreenAccent,
                  tabs: [
                    Tab(
                      child: Text(
                        'Fruits',
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Vegtables',
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Nuts &Seeds',
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: TabBarView(
                    children: [
                      Fruit_page1(),
                      Text("2nd page"),
                      Text("3rd page"),
                      Text("4th page") // Call the first class
                      // Call the second class
                    ],
                  ),
                )
              ],
            )));
  }
}


