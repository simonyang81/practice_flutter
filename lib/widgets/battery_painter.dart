/// FileName battery_painter
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/3/23 14:01
///
/// @Description
///
///

import 'package:flutter/material.dart';

class BatteryPainter extends CustomPainter {

  final double batteryLevel;
  final Color batteryColor;
  final Color backgroundColor;

  BatteryPainter({
    required this.batteryLevel,
    required this.batteryColor,
    required this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    final batteryWidth = width * 0.8;
    final batteryHeight = height * 0.4;

    final batteryStrokeWidth = batteryHeight * 0.1;

    final batteryRect = Rect.fromLTWH(
      (width - batteryWidth) / 2,
      (height - batteryHeight) / 2,
      batteryWidth,
      batteryHeight,
    );

    final radius = Radius.circular(batteryStrokeWidth * 2);

    final batteryPath = Path()
      ..addRRect(
        RRect.fromRectAndRadius(batteryRect, radius),
      )
      ..moveTo(batteryRect.right + batteryStrokeWidth / 2, height / 2)
      ..relativeLineTo(batteryStrokeWidth / 2, -batteryHeight / 6)..relativeLineTo(
          batteryStrokeWidth * -1, 0)..relativeLineTo(0, -batteryHeight / 3)..relativeLineTo(
          batteryStrokeWidth, 0)..relativeLineTo(0, -batteryHeight / 6)..relativeLineTo(
          batteryStrokeWidth * -1.5, -batteryStrokeWidth * -1.5)..relativeLineTo(
          batteryStrokeWidth * -1.5, batteryStrokeWidth * -1.5)..relativeLineTo(
          batteryStrokeWidth * -1.5, batteryStrokeWidth * 1.5)..relativeLineTo(
          batteryStrokeWidth * -1.5, -batteryStrokeWidth * -1.5)..relativeLineTo(
          batteryStrokeWidth * -1.5, batteryStrokeWidth * -1.5)..relativeLineTo(
          batteryStrokeWidth * -1.5, batteryStrokeWidth * 1.5)
      ..close();

    canvas.drawPath(
        Path.combine(PathOperation.difference,
            Path()
              ..addRect(Rect.fromLTWH(0, 0, width, height)), batteryPath),
        Paint()
          ..color = backgroundColor);

    canvas.drawPath(
        Path.combine(PathOperation.intersect,
            Path()
              ..addRect(Rect.fromLTWH(0, 0, width, height)), batteryPath),
        Paint()
          ..color = batteryColor);

    canvas.save();

    canvas.restore();

    canvas.save();

    canvas.restore();

    canvas.save();

    canvas.restore();

    canvas.save();

    canvas.restore();

    canvas.save();

    canvas.restore();

    canvas.save();

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
