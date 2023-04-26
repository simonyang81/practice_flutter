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
import 'package:practice_flutter/battery_icon_example/battery_icon_example.dart';
import 'package:practice_flutter/ble_example/ble_example.dart';
import 'package:practice_flutter/box_constraints_example/box_constraints_example.dart';
import 'package:practice_flutter/canvas_example/canvas_example.dart';
import 'package:practice_flutter/container_example/container_example_view.dart';
import 'package:practice_flutter/flutter_timer_example/flutter_timer_example.dart';
import 'package:practice_flutter/get_x_example/counter_page/counter_view.dart';
import 'package:practice_flutter/get_x_example/get_x_example_view.dart';
import 'package:practice_flutter/heating_example/heating_example.dart';
import 'package:practice_flutter/hook_example/hook_example.dart';
import 'package:practice_flutter/list_example/list_view_example.dart';
import 'package:practice_flutter/painter_example/painter_example.dart';
import 'package:practice_flutter/remaining_time_example/remaining_time_example.dart';
import 'package:practice_flutter/sized_box_example/SizedBoxExample.dart';
import 'package:practice_flutter/snackbar_example/snackbar_example.dart';
import 'package:practice_flutter/spinkit_example/spinkit_example.dart';
import 'package:practice_flutter/text_example/text_example.dart';
import 'package:practice_flutter/text_field_example/text_field_example.dart';

import '../app_bar_example/app_bar_example.dart';
import '../button_example/button_example.dart';
import '../dialog_example/dialog_example.dart';
import '../material_app_example/material_app_example1.dart';
import '../padding_example/padding_example.dart';
import '../scaffold_example/scaffold_example.dart';
import '../tab_bar_example/tab_bar_example.dart';
import 'routes.dart';

class Pages {

  static final routes = [

    GetPage(
        name: Routes.getXExample,
        page: () => const GetXExamplePage(),
        transition: Transition.rightToLeft),

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

    GetPage(
        name: Routes.boxConstraintsExample,
        page: () => const BoxConstraintsExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.textExample,
        page: () => const TextExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.containerExample,
        page: () => const ContainerExamplePage(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.textFiledExample,
        page: () => const TextFieldExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.canvasExample,
        page: () => const CanvasExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.snackBarExample,
        page: () => const SnackBarExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.spinkitExample,
        page: () => const SpinkitExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.dialogExample,
        page: () => const DialogExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.bleExample,
        page: () => const BleExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.remainingTimeExample,
        page: () => const RemainingTimeExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.listViewExample,
        page: () => const ListViewExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.batteryIconExample,
        page: () => const BatteryIconExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.painterExample,
        page: () => const PainterExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.sizedBoxExample,
        page: () => const SizedBoxExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.heatingExample,
        page: () => const HeatingExample(),
        transition: Transition.rightToLeft),

    GetPage(
        name: Routes.flutterTimerExample,
        page: () => const FlutterTimerExample(),
        transition: Transition.rightToLeft),

    // CounterPagePage 的路由
    GetPage(name: Routes.counterExample, page: () => CounterPage(), transition: Transition.rightToLeft),

    GetPage(name: Routes.hookExample, page: () => HookExample(), transition: Transition.rightToLeft),


  ];


}