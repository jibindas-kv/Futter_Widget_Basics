import 'package:flutter/material.dart';

class Image_widget extends StatefulWidget {
  const Image_widget({super.key});

  @override
  State<Image_widget> createState() => _Image_widgetState();
}

class _Image_widgetState extends State<Image_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 110,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Assets Image",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 220,
                width: 390,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage("assets/sample Image.jpg"))),
              )
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Network Image",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 220,
                width: 390,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/620337/pexels-photo-620337.jpeg?cs=srgb&dl=pexels-pripicart-620337.jpg&fm=jpg"),
                        fit: BoxFit.fill)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
