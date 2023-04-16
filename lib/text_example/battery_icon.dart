/// FileName battery_icon
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/3/23 14:35
///
/// @Description
///

import 'package:flutter/material.dart';

class BatteryIcon extends StatelessWidget {
  final double level;
  final Color batteryColor;
  final Color batteryBorderColor;
  final double width;

  const BatteryIcon({
    super.key,
    required this.level,
    this.batteryColor = Colors.green,
    this.batteryBorderColor = Colors.black,
    this.width = 30.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 12,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 3,
            top: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: batteryBorderColor),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Align(
                alignment: Alignment.topRight,
                widthFactor: 0.88,
                child: Container(
                  color: batteryColor,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 3.9,
            child: Container(
              width: 1.5,
              height: 4.6,
              decoration: BoxDecoration(
                color: batteryBorderColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}