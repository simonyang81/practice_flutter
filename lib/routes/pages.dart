/// Copyright openuse.io © 2022
/// FileName pages
///
/// @Author simonyang81@gmail.com
/// @Date 2022/8/18 16:46
///
/// @Description
///
///

import 'package:get/get.dart';

import '../app_bar_example/app_bar_example.dart';
import '../material_app_example/material_app_example1.dart';
import '../scaffold_example/scaffold_example.dart';
import '../tab_bar_example/tab_bar_example.dart';
import 'routes.dart';

class Pages {

  static final routes = [

    GetPage(
        name: Routes.materialAppExample1,
        page: () => const MaterialAppExample1(),
        transition: Transition.rightToLeft),


    GetPage(
        name: Routes.scaffoldExample,
        page: () => const ScaffoldExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.appBarExample,
        page: () => const AppBarExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.tabBarExample,
        page: () => const TabBarExample(),
        transition: Transition.rightToLeft),

  ];


}