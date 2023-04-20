/// FileName hour_hand
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/4/18 18:00
///
/// @Description
///
///


import 'package:flutter/material.dart';

class HourHand extends StatelessWidget {
  final double length;
  final double width;
  final Color color;

  const HourHand({super.key, required this.length, required this.width, required this.color});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HourHandPainter(length: length, width: width, color: color),
      size: Size(length + width, width),
    );
  }
}

class HourHandPainter extends CustomPainter {
  final double length;
  final double width;
  final Color color;

  HourHandPainter({required this.length, required this.width, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path();
    path.moveTo(0, width / 2);
    path.lineTo(length, width / 2);
    path.lineTo(length - width / 2, 0);
    path.lineTo(0, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
