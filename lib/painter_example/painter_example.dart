/// FileName painter_example
///
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/4/15 11:20
///
/// @Description
///
///
///

import 'package:flutter/material.dart';

class PainterExample extends StatelessWidget {
  const PainterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('绘制小兔子'),
      ),
      body: CustomPaint(
        size: const Size(300, 400), // 设置画布大小
        painter: RabbitPainter(),
      ),
    );
  }
}

class RabbitPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // 设置画笔
    final paint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.fill;

    // 画身体
    canvas.drawOval(
      Rect.fromCenter(center: Offset(size.width / 2, size.height * 3 / 4), width: 100, height: 150),
      paint,
    );

    // 画头部
    canvas.drawOval(
      Rect.fromCenter(center: Offset(size.width / 2, size.height / 2), width: 80, height: 100),
      paint,
    );

    // 画耳朵
    canvas.drawOval(
      Rect.fromCenter(center: Offset(size.width / 2 - 30, size.height / 2 - 60), width: 20, height: 60),
      paint,
    );
    canvas.drawOval(
      Rect.fromCenter(center: Offset(size.width / 2 + 30, size.height / 2 - 60), width: 20, height: 60),
      paint,
    );

    // 画眼睛
    paint.color = Colors.black;
    canvas.drawCircle(Offset(size.width / 2 - 20, size.height / 2 - 10), 5, paint);
    canvas.drawCircle(Offset(size.width / 2 + 20, size.height / 2 - 10), 5, paint);

    // 画鼻子
    paint.color = Colors.pink;
    canvas.drawOval(
      Rect.fromCenter(center: Offset(size.width / 2, size.height / 2 + 10), width: 10, height: 6),
      paint,
    );

    // 画嘴巴
    final mouthPath = Path()
      ..moveTo(size.width / 2 - 10, size.height / 2 + 20)
      ..quadraticBezierTo(size.width / 2, size.height / 2 + 30, size.width / 2 + 10, size.height / 2 + 20);
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;
    canvas.drawPath(mouthPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}


