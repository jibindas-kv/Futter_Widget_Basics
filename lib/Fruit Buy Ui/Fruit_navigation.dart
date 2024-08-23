import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibin_flutter/Fruit%20Buy%20Ui/Fruit_home.dart';


class Fruit_navigation extends StatefulWidget {
  Fruit_navigation({Key? key}) : super(key: key);

  @override
  _Fruit_navigationState createState() => _Fruit_navigationState();
}

class _Fruit_navigationState extends State<Fruit_navigation> {
  int _selectedIndex = 0;

  static const List<dynamic> _widgetOptions = [
    Fruit_home(),
    Text("Discover"),
    Text("Orders"),
    Text("Menu"),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,size: 30,),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.map_outlined,size: 30,),
                label: "Discover",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_sharp,size: 27,),
                label: 'My order',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu,size: 30,),
                label: 'Menu',
                backgroundColor: Colors.white)
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.yellow.shade900,

          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey.shade900,
          selectedIconTheme: IconThemeData(color: Colors.yellow.shade900),

          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
