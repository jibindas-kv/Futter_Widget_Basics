import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibin_flutter/Provider/Page_2.dart';
import 'package:jibin_flutter/Provider/Provider_demo.dart';
import 'package:provider/provider.dart';

class Page_1 extends StatefulWidget {
  const Page_1({super.key});

  @override
  State<Page_1> createState() => _Page_1State();
}

class _Page_1State extends State<Page_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Page 1",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Page_2(),
                      )),
                  child: Text("Go To Page 2")),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            Provider.of<Provider_demo>(context).test1,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<Provider_demo>(context, listen: false)
                    .changeValue();
              },
              child: Text("Change Sample Text")),
        ],
      ),
    );
  }
}
