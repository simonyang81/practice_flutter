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
import 'package:practice_flutter/align_example/align_example.dart';
import 'package:practice_flutter/animated_align_example/animated_align_example.dart';
import 'package:practice_flutter/animated_padding_example/animated_padding_example.dart';

import '../app_bar_example/app_bar_example.dart';
import '../button_example/button_example.dart';
import '../material_app_example/material_app_example1.dart';
import '../padding_example/padding_example.dart';
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

    GetPage(
        name: Routes.paddingExample,
        page: () => const PaddingExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.animatedPaddingExample,
        page: () => const AnimatedPaddingExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.alignExample,
        page: () => const AlignExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.animatedAlignExample,
        page: () => const AnimatedAlignExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.buttonExample,
        page: () => const ButtonExample(),
        transition: Transition.rightToLeft),

  ];


}