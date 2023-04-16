/// FileName battery_indicator
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/3/23 11:34
///
/// @Description
///

import 'package:flutter/material.dart';

class BatteryIndicator extends StatelessWidget {
  final double value;
  final Color color;

  const BatteryIndicator({
    Key? key,
    required this.value,
    this.color = Colors.green,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: Colors.grey[300],
      valueColor: AlwaysStoppedAnimation<Color>(color),
    );
  }
}