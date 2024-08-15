import 'package:flutter/material.dart';
import 'package:jibin_flutter/Coffe%20Shop/CS_2_Home.dart';
import 'package:jibin_flutter/Coffe%20Shop/CS_4.dart';

class CS_2 extends StatefulWidget {
  CS_2({Key? key}) : super(key: key);

  @override
  _CS_2State createState() => _CS_2State();
}

class _CS_2State extends State<CS_2> {
  int _selectedIndex = 0;

  static const List<dynamic> _widgetOptions = [
    CS_2_Home(),
    Text('Favourite',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Your Cart Is Empty',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('No Unread Notifications',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),

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
                icon: Icon(Icons.home,color: Colors.black,),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite,color: Colors.black,),
                label: 'Favorite',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag,color: Colors.black,),
                label: 'Cart',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications,color: Colors.black,),
                label: 'Notifications',
                backgroundColor: Colors.white)
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
