/// FileName clip_rect_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/5/6 14:26
///
/// @Description
///
///

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
          Image.network('https://picsum.photos/seed/picsum/200/200')
        ],
      ),),
    );
  }
}

class MyClipperR extends CustomClipper<RRect> {
  @override
  RRect getClip(Size size) {
    return RRect.fromLTRBR(100, 0, size.width, size.height, const Radius.circular(10));
  }

  @override
  bool shouldReclip(covariant CustomClipper<RRect> oldClipper) => false;

}
