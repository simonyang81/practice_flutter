/// FileName layout_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/7/10 20:54
///
/// @Description
///
///

import 'package:flutter/material.dart';

class LayoutExample extends StatefulWidget {
  const LayoutExample({super.key});

  @override
  State<LayoutExample> createState() => _LayoutExampleState();
}

class _LayoutExampleState extends State<LayoutExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('线性布局'),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red,
            padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
            // margin: const EdgeInsets.all(10),
            child: const Text('区域一', style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.green,
            padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
            // margin: const EdgeInsets.all(10),
            child: const Text('区域二', style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue,
            padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
            // margin: const EdgeInsets.all(10),
            child: const Text('区域三', style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        )
      ],
    );
  }

}
