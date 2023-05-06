/// FileName container_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/3/15 19:22
///
/// @Description
///
///

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_flutter/container_example/container_example_logic.dart';

class ContainerExamplePage extends StatefulWidget {
  const ContainerExamplePage({Key? key}) : super(key: key);

  @override
  State<ContainerExamplePage> createState() => _ContainerExamplePageState();
}

class _ContainerExamplePageState extends State<ContainerExamplePage> {

  final logic = Get.put(ContainerExampleLogic());
  final state = Get.find<ContainerExampleLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold 允许子Widget尽可能地填充，下面的Container自身没有设置指定的宽和高，所以这里的Container填充的是父组件
      appBar: AppBar(
        title: const Text('Container Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GetBuilder<ContainerExampleLogic>(
              assignId: true,
              builder: (logic) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  width: state.width,
                  height: state.height,
                  color: state.color,
                  transform: Matrix4.rotationZ(state.matrix4),
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      state.width = 150;
                      state.height = 150;
                      logic.update();
                    },
                    child: const Text('改变宽高'),
                  ),

                  const SizedBox(width: 10,),

                  ElevatedButton(onPressed: () {

                    // debugPrint('-->> 改变颜色');

                    state.color = Colors.red;
                    logic.update();
                  }, child: const Text('改变颜色')),

                  const SizedBox(width: 10,),

                  ElevatedButton(onPressed: () {

                    state.matrix4 = pi / 4;
                    logic.update();

                  }, child: const Text('改变旋转角度')),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
