import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.grey.shade800,
                      size: 25,
                    )),
                SizedBox(
                  width: 282,
                ),
                Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 28,
                  ),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(100),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Chats",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 35),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Container(
                      height: 30,
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Image(
                          image: AssetImage("assets/meta.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    hintText: 'Ask Meta AI or Search',
                    fillColor: Color.fromARGB(255, 230, 244, 255),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none)),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(child: Text('All')),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(child: Text('Unread')),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(child: Text('Groups')),
                )
              ],
            ),
            Expanded(child: ListView.builder(itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Name"),
                  subtitle: Text("Last Message"),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/user.png"),
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
