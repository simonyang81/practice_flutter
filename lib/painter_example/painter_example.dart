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

class RabbitPainter extends CustomPainter {
  final Color color;

  RabbitPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final bodyPath = Path();
    bodyPath.addOval(Rect.fromLTWH(0, 0, size.width, size.height));

    final earPath = Path();
    earPath.moveTo(size.width * 0.4, size.height * 0.1);
    earPath.lineTo(size.width * 0.2, size.height * 0.2);
    earPath.lineTo(size.width * 0.3, size.height * 0.4);
    earPath.close();

    final eyePath = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.7, size.height * 0.3, size.width * 0.1, size.height * 0.1));

    final nosePath = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.5, size.height * 0.5, size.width * 0.2, size.height * 0.1));

    // 绘制身体
    canvas.drawPath(bodyPath, paint);
    // 绘制耳朵
    canvas.drawPath(earPath, paint);
    // 绘制眼睛
    canvas.drawPath(eyePath, paint);
    // 绘制鼻子
    canvas.drawPath(nosePath, paint);
  }

  @override
  bool shouldRepaint(RabbitPainter oldDelegate) => true;
}

class PainterExample extends StatelessWidget {
  const PainterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('绘制小兔子'),
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 200,
          child: CustomPaint(
            painter: RabbitPainter(Colors.pink),
          ),
        ),
      ),
    );
  }
}


