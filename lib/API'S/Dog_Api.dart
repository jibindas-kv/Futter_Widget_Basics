import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Dogapi extends StatefulWidget {
  const

  Dogapi({super.key});

  @override
  State<Dogapi> createState() => _DogapiState();
}

class _DogapiState extends State<Dogapi> {
  dynamic userdata;

  Future<dynamic> fetchUser() async {
    final url = "https://dog.ceo/api/breeds/image/random";
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      setState(() {
        userdata = json;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (userdata == null) Text("press the button"),
              if (userdata != null)
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 300,
                            width: 300,
                            child: Image.network(userdata['message'])),
                      ],
                    ),

                  ],
                ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fetchUser();
                    });
                  },
                  child: Text("Load data")),
            ]),
      ),
      appBar: AppBar(),
    );
  }
}