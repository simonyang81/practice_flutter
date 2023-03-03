/// Copyright openuse.io © 2022
/// FileName align_example
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/3/3 15:37
///
/// @Description
///
///

import 'package:flutter/material.dart';

class AlignExample extends StatefulWidget {
  const AlignExample({Key? key}) : super(key: key);

  @override
  State<AlignExample> createState() => _AlignExampleState();
}

class _AlignExampleState extends State<AlignExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align Example'),
      ),
      body: _buildContent(context),
    );
  }
  Widget _buildContent(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        child: const Align(
          alignment: Alignment.topRight,
          widthFactor: 5,   // 设置父Widget的宽度是child的5倍
          heightFactor: 3,  // 设置父Widget的高度是child的3倍
          child: Text('Align', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),)),
      ),
    );
  }

}
