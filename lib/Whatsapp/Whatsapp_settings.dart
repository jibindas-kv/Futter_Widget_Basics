import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibin_flutter/Whatsapp/Whatsapp_navigation.dart';

class Whatsapp_settings extends StatefulWidget {
  const Whatsapp_settings({super.key});

  @override
  State<Whatsapp_settings> createState() => _Whatsapp_settingsState();
}

class _Whatsapp_settingsState extends State<Whatsapp_settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading:
        InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Whatsapp_navigation();
              },));
            },
            child: Icon(Icons.arrow_back_outlined,color: Colors.white,)),
        title: new Text(
          "Settings",
          style: TextStyle(
              color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Color.fromRGBO(11, 20, 27, 1),
      ),
      backgroundColor: Color.fromRGBO(11, 20, 27, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      color: Colors.green.shade700,
                      borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(image:  AssetImage("assets/whatsapp_dp.jpg"))
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "Status",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 160,
                ),
                Icon(
                  Icons.qr_code,
                  color: Colors.green,
                  size: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.arrow_drop_down_circle_outlined,
                  color: Colors.green,
                  size: 28,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Recent",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, top: 0, right: 10),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 20),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.settings,
                        color: Colors.grey,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 90),
                              child: Text(
                                "Option Name",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'Discription about the option',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
