import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibin_flutter/Whatsapp/Whatsapp_navigation.dart';
import 'package:jibin_flutter/Whatsapp/Whatsapp_settings.dart';

class Whatsapp_channel_explore extends StatefulWidget {
  const Whatsapp_channel_explore({super.key});

  @override
  State<Whatsapp_channel_explore> createState() => _Whatsapp_channel_exploreState();
}

class _Whatsapp_channel_exploreState extends State<Whatsapp_channel_explore> {
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
          "Channels",
          style: TextStyle(
              color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              CupertinoIcons.bars,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Color.fromRGBO(11, 20, 27, 1),
      ),
      backgroundColor: Color.fromRGBO(11, 20, 27, 1),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, top: 0, right: 10),
                    child: ListTile(
                      title: Text(
                        "Channel Name",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Last Message",
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/whatsapp_dp.jpg"),
                        radius: 28,
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
