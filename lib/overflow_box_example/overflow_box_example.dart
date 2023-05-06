/// FileName overflow_box_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/5/4 09:42
///
/// @Description
///
///

import 'package:flutter/material.dart';

class OverflowBoxExample extends StatefulWidget {
  const OverflowBoxExample({Key? key}) : super(key: key);

  @override
  State<OverflowBoxExample> createState() => _OverflowBoxExampleState();
}

class _OverflowBoxExampleState extends State<OverflowBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OverflowBox Example'),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Container(
      width: 250,
      height: 250,
      color: Colors.pink,
      padding: const EdgeInsets.all(5),
      child: OverflowBox(
        alignment: Alignment.topLeft,
        maxWidth: 300,
        maxHeight: 500,
        child: Container(
          color: Colors.blue,
          width: 1000,
          height: 1000,
        ),
      ),
    );
  }

}
