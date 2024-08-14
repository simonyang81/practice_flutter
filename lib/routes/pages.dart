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
import 'package:practice_flutter/box_constraints_example/box_constraints_example.dart';
import 'package:practice_flutter/canvas_example/canvas_example.dart';
import 'package:practice_flutter/clip_rect_example/clip_rect_example.dart';
import 'package:practice_flutter/container_example/container_example_view.dart';
import 'package:practice_flutter/dropdown_button_example/dropdown_button_example.dart';
import 'package:practice_flutter/fitted_box_example/FittedBoxExample.dart';
import 'package:practice_flutter/flutter_timer_example/flutter_timer_example.dart';
import 'package:practice_flutter/fractionally_sized_box_example/fractionally_sized_box_example.dart';
import 'package:practice_flutter/get_x_example/counter_page/counter_view.dart';
import 'package:practice_flutter/get_x_example/get_x_example_view.dart';
import 'package:practice_flutter/heating_example/heating_example.dart';
import 'package:practice_flutter/hook_example/hook_example.dart';
import 'package:practice_flutter/layout_example/layout_example.dart';
import 'package:practice_flutter/list_example/list_view_example.dart';
import 'package:practice_flutter/nested_scroll_view_example/nested_scroll_view_example2.dart';
import 'package:practice_flutter/overflow_box_example/overflow_box_example.dart';
import 'package:practice_flutter/painter_example/painter_example.dart';
import 'package:practice_flutter/preview_file/preview_excel_file.dart';
import 'package:practice_flutter/records_example/record_example.dart';
import 'package:practice_flutter/remaining_time_example/remaining_time_example.dart';
import 'package:practice_flutter/share_csv_file_example/share_csv_file_example_view.dart';
import 'package:practice_flutter/sized_box_example/SizedBoxExample.dart';
import 'package:practice_flutter/snackbar_example/snackbar_example.dart';
import 'package:practice_flutter/spinkit_example/spinkit_example.dart';
import 'package:practice_flutter/text_example/text_example.dart';
import 'package:practice_flutter/text_field_example/text_field_example.dart';
import 'package:practice_flutter/uni_links_example/uni_links_example.dart';

import '../app_bar_example/app_bar_example.dart';
import '../aspect_ratio_example/aspect_ratio_example.dart';
import '../button_example/button_example.dart';
import '../dialog_example/dialog_example.dart';
import '../material_app_example/material_app_example1.dart';
import '../nested_scroll_view_example/nested_scroll_base_use_page.dart';
import '../nested_scroll_view_example/nested_scroll_base_use_page3.dart';
import '../nested_scroll_view_example/nested_scroll_view_example.dart';
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

    GetPage(name: Routes.hookExample, page: () => const HookExample(), transition: Transition.rightToLeft),

    GetPage(name: Routes.fittedBoxExample, page: () => const FittedBoxExample(), transition: Transition.rightToLeft),

    GetPage(name: Routes.overflowBoxExample, page: () => const OverflowBoxExample(), transition: Transition.rightToLeft),
    
    GetPage(name: Routes.aspectRatioExample, page: () => const AspectRatioExample(), transition: Transition.rightToLeft),

    GetPage(name: Routes.fractionallySizedBoxExample, page: () => const FractionallySizedBoxExample(), transition: Transition.rightToLeft),

    GetPage(name: Routes.clipRectExample, page: () => const ClipRectExample(), transition: Transition.rightToLeft),
    
    GetPage(name: Routes.uniLineExample, page: () => const UniLinksExample(), transition: Transition.rightToLeft),

    GetPage(name: Routes.recordExample, page: () => const RecordExample(), transition: Transition.rightToLeft,),
    GetPage(name: Routes.home, page: () => const MyHomePage(title: 'Practice Flutter',), transition: Transition.rightToLeft,),

    GetPage(name: Routes.layoutExample, page: () => const LayoutExample(), transition: Transition.rightToLeft,),

    GetPage(name: Routes.shareCSVFileExample, page: () => const ShareCsvFileExamplePage(), transition: Transition.rightToLeft,),

    GetPage(name: Routes.previewExcelFile, page: () => const PreviewExcelFile(), transition: Transition.rightToLeft,),

    GetPage(name: Routes.dropdownButtonExample, page: () => const DropdownButtonExample(), transition: Transition.rightToLeft,),

    GetPage(name: Routes.nestedScrollViewExample, page: () => const NestedScrollViewExample(), transition: Transition.rightToLeft,),

    GetPage(name: Routes.nestedScrollViewExample2, page: () => const NestedScrollViewExample2(), transition: Transition.rightToLeft,),

    GetPage(name: Routes.nestedScrollViewBase, page: () => const NestScrollBaseUsePage(), transition: Transition.rightToLeft,),

    GetPage(name: Routes.nestedScrollViewBase3, page: () => const NestScrollBaseUsePage3(), transition: Transition.rightToLeft,),

  ];


}