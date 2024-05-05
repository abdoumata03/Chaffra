import 'package:aura_box/aura_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BluredGrad extends StatelessWidget {
  const BluredGrad({super.key});

  @override
  Widget build(BuildContext context) {
    return AuraBox(
      spots: [
        AuraSpot(
          color: Colors.green,
          radius: 100.0,
          alignment: Alignment.topLeft,
          blurRadius: 20.0,
          stops: const [0.0, 0.5],
        ),
        AuraSpot(
          color: Colors.blue,
          radius: 120.0,
          alignment: Alignment.topCenter,
          blurRadius: 60.0,
          stops: const [0.0, 0.5],
        ),

        AuraSpot(
          color: Colors.green,
          radius: 120.0,
          alignment: Alignment.topRight,
          blurRadius: 20.0,
          stops: const [0.0, 0.7],
        ),
      ],
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child:  SizedBox(
        height: double.maxFinite,
        width: 360.w,
      ),
    );
  }
}
