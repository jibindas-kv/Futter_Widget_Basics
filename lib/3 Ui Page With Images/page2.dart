import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(
        height: 60,
      ),
      Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Icon(
            CupertinoIcons.bars,
            size: 35,
          ),
          SizedBox(
            width: 280,
          ),
          Center(
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                      image: DecorationImage(
                          image: AssetImage("assets/user.png"),
                          fit: BoxFit.fill)),
                )
              ],
            ),
          )
        ],
      ),
      SizedBox(
        height: 40,
      ),
      Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Text(
            "Discover",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        children: [
          SizedBox(
            width: 25,
          ),
          Text(
            'places',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'Inspiration',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'Emotion',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      Row(children: [
        SizedBox(
          width: 50,
        ),
        Container(
            height: 5,
            width: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurpleAccent)),
      ]),
      SizedBox(
        height: 40,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 250,
            width: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage("assets/mountain2.jpg"),
                    fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      '  Cascade',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 5,),
                    Icon(Icons.location_on, color: Colors.white,size: 15,),
                    Text(
                      ' Corooda,Banff',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(

            height: 250,
            width: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage("assets/mountain1.jpg"),
                    fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      '  Cascade',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 5,),
                    Icon(Icons.location_on, color: Colors.white,size: 15,),
                    Text(
                      ' Corooda,Banff',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          SizedBox(
            width: 25,
          ),
          Text(
            'Explore more',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 180,
          ),
          Text(
            'see all',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent),
          ),
        ],
      ),
      SizedBox(
        height: 40,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage("assets/boat.jpg"), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Kayacking',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600),
            ),
          ]),
          Column(children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage("assets/glass.jpg"), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Swimming',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600),
            ),
          ]),
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage("assets/parashoot.png"),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Paragliding',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage("assets/hill.jpg"),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Hiking',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600),
              ),
            ],
          )
        ],
      ),
      SizedBox(
        height: 50,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.crop_square, color: Colors.black,size: 28,),
          Icon(
            CupertinoIcons.chart_bar_alt_fill,
            color: Colors.grey.shade700,
          ),
          Icon(CupertinoIcons.search, color: Colors.grey.shade700),
          Icon(CupertinoIcons.person, color: Colors.grey.shade700),
        ],
      ),
    ]));
  }
}
