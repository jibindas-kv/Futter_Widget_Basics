import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibin_flutter/Provider/Page_3.dart';
import 'package:jibin_flutter/Provider/Provider_demo.dart';
import 'package:provider/provider.dart';

class Page_2 extends StatefulWidget {
  const Page_2({super.key});

  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Page 2",
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
                        builder: (context) => Page_3(),
                      )),
                  child: Text("Go To Page 3")),
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
