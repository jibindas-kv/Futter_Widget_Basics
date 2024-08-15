import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Indipendance_day extends StatefulWidget {
  const Indipendance_day({super.key});

  @override
  State<Indipendance_day> createState() => _Indipendance_dayState();
}

class _Indipendance_dayState extends State<Indipendance_day> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 550,
            height: 990,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/poster.jpg"), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Freedom is never dear at any price.\n                 It is the breath of life.\nWhat would a man not pay for living.",
                  style: TextStyle(
                    fontSize: 18,
                      fontFamily: "Poppins",
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w800
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: Text(
                  'Happy',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'NotoSerif',
                    fontWeight: FontWeight.w900,
                    color: Colors.brown.shade400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
                  Center(
                    child: Text(
                      'Independance',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'NotoSerif',
                        color: Colors.brown.shade400,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Day',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'NotoSerif',
                        color: Colors.brown.shade400,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
            ])),
      ),
    );
  }
}
