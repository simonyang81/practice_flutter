/// FileName arrow_widget
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/4/18 17:53
///
/// @Description
///
///

import 'package:flutter/material.dart';

class ArrowWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const ArrowWidget({super.key, required this.width, required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ArrowPainter(color: color),
      size: Size(width, height),
    );
  }
}

class ArrowPainter extends CustomPainter {
  final Color color;

  ArrowPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - size.height / 2, 0);
    path.moveTo(size.width, size.height / 2);
    path.lineTo(size.width - size.height / 2, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
