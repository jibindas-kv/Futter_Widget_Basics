import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibin_flutter/Car%20Rent%20Ui/Car_rent_bottom_navigation_bar.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Inbox",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Car_rent_bottom_navigation_bar();
              },));
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 18,top: 10,bottom: 7),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.search,color: Colors.grey.shade900,size: 30,),
                    hintText: 'Search',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.shade900))),
              ),
            ),
            SizedBox(height: 10,),
            Expanded(child: ListView.builder(itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  subtitle: Text("Last Message",),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/profile3.jpeg"),
                    radius: 30,
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}