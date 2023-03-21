/// FileName container_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/3/15 19:22
///
/// @Description
///
///

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
  final state = Get
      .find<ContainerExampleLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold 允许子Widget尽可能地填充，下面的Container自身没有设置指定的宽和高，所以这里的Container填充的是父组件
      appBar: AppBar(
        title: const Text('Container Example'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        decoration: BoxDecoration(

          // 边框的颜色与宽度
          // border: Border.all(color: const Color(0xFFFF0000), width: 0.5),
          // border: Border.symmetric(vertical: BorderSide(color: Color(0xFFFF0000), width: 0.5,)),

          // 边框圆角
          // borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          // 填充色
          color: const Color(0xFF9E9E9E)


        ),
        child: Obx(() {
          return ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.data[index]),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.grey,
                  indent: 10,
                  endIndent: 10,
                  height: 1,
                );
              },
              itemCount: state.data.length
          );
        }),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: const [
      //       Text('Container Example', style: TextStyle(fontSize: 18, color: Colors.black),),
      //     ],
      //   ),
      // ),
    );
  }
}
