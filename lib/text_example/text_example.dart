/// Copyright openuse.io © 2022
/// FileName text_example
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/3/5 10:03
///
/// @Description
///
///

import 'package:flutter/material.dart';
import 'package:practice_flutter/widgets/battery_painter.dart';

import '../widgets/battery_indicator.dart';
import 'battery_icon.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  final double level = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Example'),
      ),
      body: const Center(
        child: BatteryIcon(
          level: 1,
          batteryColor: Colors.green,
        ),
      ),
      // body: _buildContent(),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       // Text(
      //       //   '这是一个 Text 组件，这是一个 Text 组件，这是一个 Text 组件',
      //       //   style: TextStyle(
      //       //     inherit: false,
      //       //     // color: Colors.red,
      //       //     // foreground:
      //       //     //   Paint()..color = Colors.white
      //       //     // ,
      //       //     // backgroundColor: Colors.green,
      //       //     background: Paint()..color = Colors.green,
      //       //     fontSize: 30,
      //       //     // fontWeight: FontWeight.w800,
      //       //     // letterSpacing: 4,
      //       //     // wordSpacing: 50,
      //       //     // fontStyle: FontStyle.italic,
      //       //     textBaseline: TextBaseline.alphabetic,
      //       //     height: 4,
      //       //     shadows: const [
      //       //       BoxShadow(
      //       //         color: Colors.black45,  // 阴影的颜色
      //       //         offset: Offset(10, 10), // 偏移量
      //       //         spreadRadius: 5.0 // 模糊度
      //       //       )
      //       //     ],
      //       //     decoration: TextDecoration.underline,
      //       //     decorationColor: Colors.black,
      //       //     decorationStyle: TextDecorationStyle.wavy,
      //       //     decorationThickness: 1,
      //       //   ),
      //       //   textAlign: TextAlign.center,
      //       //   maxLines: 1,
      //       //   // overflow: TextOverflow.ellipsis,
      //       //   // softWrap: false,
      //       // ),
      //       // BatteryIndicator(
      //       //   value: 0.1,
      //       // )
      //       SizedBox(
      //         width: 200,
      //         height: 200,
      //         child: CustomPaint(
      //           painter: BatteryPainter(
      //             batteryColor: Colors.black,
      //             backgroundColor: Colors.blueAccent,
      //             batteryLevel: 0.2,
      //           ),
      //           child: Container(
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );

  }

  Widget _buildContent() {
    return Center(
      child: SizedBox(
        width: 55,
        height: 20,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 5,
              top: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Align(
                    alignment:
                    AlignmentDirectional(level > 0 ? -1 : -1, level > 0 ? -1 : -1),
                    widthFactor:
                    level > 0 ? level.clamp(0.0, 1.0) : null,
                    heightFactor:
                    level > 0 ? null : level.clamp(0.0, 1.0).abs(),
                    child: Container(color: Colors.black),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 4,
              child: Container(
                width: 4,
                height: 12,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
