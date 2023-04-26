import 'package:flutter/material.dart';
import 'package:get/get.dart';

class User{
  User({this.name = '', this.age = 0});
  String name;
  int age;

  @override
  String toString() {
    return 'User{name: $name, age: $age}';
  }

}

class CounterPageLogic extends GetxController {

  var counter = 0.obs;

  var user = User().obs;

  @override
  void onReady() {
    super.onReady();
    ever(user, (callback) {
      debugPrint('ever callback: $callback');
    });
    once(user, (callback) {
      debugPrint('once callback: $callback');
    });

    addListener(() {
      debugPrint('addListener callback: $counter');
    });

    addListenerId('counter', () {
      debugPrint('addListenerId callback: $counter');
    });

  }

  // 计数器加10，并更新页面
  void increment() {
    counter += 10;
    update(['counter']);
    updateUser();
  }

  void updateUser() {
    // user.update((val) {
    //   val!.name = 'Simon';
    //   val.age = 18;
    // });

    user.update((val) {
      val!.name = 'Simon';
      val.age = 18;
    });


  }


}


