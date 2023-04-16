/// FileName battery_icon_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/4/6 09:02
///
/// @Description
///
///

import 'package:flutter/material.dart';

import '../text_example/battery_icon.dart';

class BatteryIconExample extends StatefulWidget {
  const BatteryIconExample({Key? key}) : super(key: key);

  @override
  State<BatteryIconExample> createState() => _BatteryIconExampleState();
}

class _BatteryIconExampleState extends State<BatteryIconExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Battery Icon Example'),
      ),
      body: Center(
        // child: BatteryIcon(level: 0.25),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(150),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            child: BatteryIcon(level: 0.2),
          ),
        ),
      ),
    );
  }
}

