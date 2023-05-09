/// FileName clip_rect_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/5/6 14:26
///
/// @Description
///
///

import 'dart:math';

import 'package:flutter/material.dart';

class ClipRectExample extends StatelessWidget {
  const ClipRectExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ClipRect Example'),),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
              clipper: MyClipperR(),
              // borderRadius: BorderRadius.circular(20),
              child: Image.network('https://picsum.photos/seed/picsum/200/200')),
          const SizedBox(height: 10,),
          Image.network('https://picsum.photos/seed/picsum/200/200'),
          ClipOval(
            child: Image.network('https://picsum.photos/seed/picsum/300/200')
          ),
          // 使用ClipPath将一个Container裁剪出一个五角星
          ClipPath(
            clipper: StarClipper(),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),),
    );
  }
}

// 自定义裁剪器，继承自CustomClipper，裁剪出五角星
class StarClipper extends CustomClipper<Path> {

  final double scale;

  StarClipper({this.scale = 2.5});

  double preDegree = 36;

  double degree2Radian(double degree) {
    return (pi * degree) / 180;
  }

  @override
  Path getClip(Size size) {
    var R = min(size.width / 2, size.height / 2);
    var r = R / scale;
    var x = size.width / 2;
    var y = size.height / 2;

    var path = Path();
    path.moveTo(x, y - R);
    path.lineTo(x - sin(degree2Radian(preDegree)) * r, y - cos(degree2Radian(preDegree)) * r);
    path.lineTo(x - sin(degree2Radian(preDegree * 2)) * R, y - cos(degree2Radian(preDegree * 2)) * R);
    path.lineTo(x - sin(degree2Radian(preDegree * 3)) * r, y - cos(degree2Radian(preDegree * 3)) * r);
    path.lineTo(x - sin(degree2Radian(preDegree * 4)) * R, y - cos(degree2Radian(preDegree * 4)) * R);
    path.lineTo(x - sin(degree2Radian(preDegree * 5)) * r, y - cos(degree2Radian(preDegree * 5)) * r);
    path.lineTo(x - sin(degree2Radian(preDegree * 6)) * R, y - cos(degree2Radian(preDegree * 6)) * R);
    path.lineTo(x - sin(degree2Radian(preDegree * 7)) * r, y - cos(degree2Radian(preDegree * 7)) * r);
    path.lineTo(x - sin(degree2Radian(preDegree * 8)) * R, y - cos(degree2Radian(preDegree * 8)) * R);
    path.lineTo(x - sin(degree2Radian(preDegree * 9)) * r, y - cos(degree2Radian(preDegree * 9)) * r);
    path.lineTo(x - sin(degree2Radian(preDegree * 10)) * R, y - cos(degree2Radian(preDegree * 10)) * R);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyClipperR extends CustomClipper<RRect> {
  @override
  RRect getClip(Size size) {
    return RRect.fromLTRBR(100, 0, size.width, size.height, const Radius.circular(10));
  }

  @override
  bool shouldReclip(covariant CustomClipper<RRect> oldClipper) => false;

}
