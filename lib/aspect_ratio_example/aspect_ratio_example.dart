/// FileName aspect_ratio_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/5/4 10:26
///
/// @Description
///
///

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AspectRatioExample extends StatefulWidget {
  const AspectRatioExample({Key? key}) : super(key: key);

  @override
  State<AspectRatioExample> createState() => _AspectRatioExampleState();
}

class _AspectRatioExampleState extends State<AspectRatioExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AspectRatio Example'),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            alignment: Alignment.center,  // 需要指定对齐方式，不然子组件会被拉伸
            width: Get.width,
            height: 100,
            padding: const EdgeInsets.all(5),
            child: AspectRatio(aspectRatio: 16/9,
              child: Container(color: Colors.red,),
            )),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Flutter 的 AspectRatio 组件用于按照给定的宽高比调整其子组件的大小。这个组件在布局中非常有用，尤其是当你希望某个组件始终保持特定的宽高比时',
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }

}
