import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jibin_flutter/Whatsapp/Whatsapp_settings.dart';

class Whatsapp_calls extends StatefulWidget {
  const Whatsapp_calls({super.key});

  @override
  State<Whatsapp_calls> createState() => _Whatsapp_callsState();
}

class _Whatsapp_callsState extends State<Whatsapp_calls> {

  File? _image;

  Future<void> _pickImage() async {
    final pickedFile =
    await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: new Text(
          " Calls",
          style: TextStyle(
              color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: InkWell(
              onTap: _pickImage,
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: PopupMenuButton<String>(
                  color: Color.fromRGBO(11, 15, 27, 1),
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  itemBuilder: (BuildContext contesxt) {
                    return [
                      PopupMenuItem(
                        child: Text(
                          "Clear call log",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        value: "Create channel",
                      ),
                      PopupMenuItem(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return Whatsapp_settings();
                          },));
                        },
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        value: "Settings",
                      ),
                    ];
                  })),
        ],
        backgroundColor: Color.fromRGBO(11, 20, 27, 1),
      ),
      backgroundColor: Color.fromRGBO(11, 20, 27, 1),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Favourites",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.green.shade700,
                      borderRadius: BorderRadius.circular(100)),
                  child: Center(
                      child: Icon(
                    CupertinoIcons.heart_fill,
                    color: Colors.black,
                    size: 25,
                  )),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Add favourite",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
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
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/whatsapp_dp.jpg"),
                        radius: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Column(
                          children: [
                            Text(
                              "Person Name",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Last Call Time',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 155,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Icon(
                          Icons.videocam_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
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
