import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibin_flutter/Provider/Page_1.dart';
import 'package:jibin_flutter/Provider/Provider_demo.dart';
import 'package:provider/provider.dart';

class Page_3 extends StatefulWidget {
  const Page_3({super.key});

  @override
  State<Page_3> createState() => _Page_3State();
}

class _Page_3State extends State<Page_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Page 3",
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
                        builder: (context) => Page_1(),
                      )),
                  child: Text("Go To Page 1")),
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
        ],
      ),
    );
  }
}
