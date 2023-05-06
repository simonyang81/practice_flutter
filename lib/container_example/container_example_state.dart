import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// FileName container_example_state
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/3/16 19:20
///
/// @Description
///
///

class ContainerExampleState {

  late RxList<String> data;

  double width = 100;
  double height = 100;
  MaterialColor color = Colors.blue;
  double matrix4 = 0.0;

  ContainerExampleState() {
    data = <String>[].obs;
  }

}