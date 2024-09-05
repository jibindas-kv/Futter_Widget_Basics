import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class Lottie_animation extends StatefulWidget {
  const Lottie_animation({super.key});

  @override
  State<Lottie_animation> createState() => _Lottie_animationState();
}

class _Lottie_animationState extends State<Lottie_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Lottie.asset("assets/second.json"),
                height: 500,
                width: 360.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
