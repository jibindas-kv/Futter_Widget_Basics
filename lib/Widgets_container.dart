import 'package:flutter/material.dart';

class Widgets_container extends StatefulWidget {
  const Widgets_container({super.key});

  @override
  State<Widgets_container> createState() => _Widgets_containerState();
}
class _Widgets_containerState extends
State<Widgets_container> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(25)),
          child: Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(60)),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(60)),
                      child: Center(
                        child: Text(
                          "Hello",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
