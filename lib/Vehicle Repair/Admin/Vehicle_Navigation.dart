import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibin_flutter/1st%20Login%20Page/Login_page.dart';
import 'package:jibin_flutter/Vehicle%20Repair/Admin/Notification.dart';
import 'package:jibin_flutter/Vehicle%20Repair/Admin/Payment.dart';
import 'package:jibin_flutter/Vehicle%20Repair/Admin/User.dart';
import 'package:jibin_flutter/Vehicle%20Repair/Admin/User_And_Mechanic.dart';
import 'package:jibin_flutter/Vehicle%20Repair/Admin/Vehicle_login.dart';

class Vehicle_Navigation extends StatefulWidget {
  Vehicle_Navigation({Key? key}) : super(key: key);

  @override
  _Vehicle_NavigationState createState() => _Vehicle_NavigationState();
}

class _Vehicle_NavigationState extends State<Vehicle_Navigation> {
  int _selectedIndex = 0;

  static List<dynamic> _widgetOptions = [
    UserAndMech_(),
    Payment(),
    Notification_page(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  label: 'Home',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_balance_wallet_rounded,
                    size: 30,
                  ),
                  label: 'Payment',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.chat_bubble_2_fill,
                    size: 32,
                  ),
                  label: 'Notification',
                  backgroundColor: Colors.white),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(color: Colors.blue),
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5),
      ),
    );
  }
}
