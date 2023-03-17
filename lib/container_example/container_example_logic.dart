/// FileName container_example_logic
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/3/16 19:20
///
/// @Description
///
///

import 'package:get/get.dart';
import 'package:practice_flutter/container_example/container_example_state.dart';

class ContainerExampleLogic extends GetxController {

  final state = ContainerExampleState();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 2000), () {
      state.data.add('1');
    },);

    Future.delayed(const Duration(milliseconds: 1000), () {
      state.data.add('2');
    },);

    Future.delayed(const Duration(milliseconds: 2000), () {
      state.data.add('3');
    },);


    state.data.add('4');
    state.data.add('5');
    state.data.add('6');
    state.data.add('7');
    state.data.add('8');

    Future.delayed(const Duration(milliseconds: 3000), () {
      state.data.add('9');
    },);


  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

}