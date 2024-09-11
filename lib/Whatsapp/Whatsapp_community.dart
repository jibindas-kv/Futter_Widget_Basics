import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jibin_flutter/Whatsapp/Whatsapp_settings.dart';

class Whatsapp_community extends StatefulWidget {
  const Whatsapp_community({super.key});

  @override
  State<Whatsapp_community> createState() => _Whatsapp_communityState();
}

class _Whatsapp_communityState extends State<Whatsapp_community> {
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
          " Communities",
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
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Whatsapp_settings();
                            },
                          ));
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
          Expanded(
              child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30, top: 35),
                            child: Stack(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.green.shade700,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Center(
                                      child: Icon(
                                    CupertinoIcons.add,
                                    color: Colors.black,
                                    size: 15,
                                  )),
                                ),
                              ],
                            ),
                          ),
                          height: 55,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/community.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "New Community",
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
                ]);
              }
              return Padding(
                padding: const EdgeInsets.only(left: 10, top: 0, right: 10),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 55,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/community.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Column(
                          children: [
                            Text(
                              "Community Name",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 45),
                              child: Text(
                                'Last message',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 85,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            "dd/mm/yy",
                            style: TextStyle(color: Colors.grey),
                          ))
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
