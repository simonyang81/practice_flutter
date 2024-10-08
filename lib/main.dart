import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_flutter/test_getx/test_getx_logic.dart';
import 'package:uni_links/uni_links.dart';

import 'pop_scope_example/WillPopScopeExample.dart';
import 'routes/pages.dart';
import 'routes/routes.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  final logic = Get.put(TestGetxLogic());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      title: 'Practice Flutter',
      getPages: Pages.routes,
      // initialRoute: Routes.home,
      home: const MyHomePage(title: 'Practice Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late StreamSubscription? _sub;

  @override
  void initState() {
    super.initState();
    getInitialLink().then((value) {
    });
      _sub = uriLinkStream.listen((event) {
        debugPrint('event: $event');
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              TextButton(onPressed: () {
                Get.toNamed(Routes.previewExcelFile);
              }, child: const Text('显示Excel文件')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.getXExample);
              }, child: const Text('GetX Example')),

              const SizedBox(height: 5,),
              
              TextButton(onPressed: () {
                Get.toNamed(Routes.materialAppExample1);
              }, child: const Text('material app example 1')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.scaffoldExample);
              }, child: const Text('scaffold app')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.appBarExample);
              }, child: const Text('app bar')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.tabBarExample);
              }, child: const Text('tab bar')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.paddingExample);
              }, child: const Text('padding example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.animatedPaddingExample);
              }, child: const Text('animate padding example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.alignExample);
              }, child: const Text('align example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.animatedAlignExample);
              }, child: const Text('animated align example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.buttonExample);
              }, child: const Text('button example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.boxConstraintsExample);
              }, child: const Text('box constraints example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.textExample);
              }, child: const Text('text example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.canvasExample);
              }, child: const Text('Canvas Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.containerExample);
              }, child: const Text('Container Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.textFiledExample);
              }, child: const Text('TextField Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.snackBarExample);
              }, child: const Text('Snack Bar Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.spinkitExample);
              }, child: const Text('Spinkit Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.dialogExample);
              }, child: const Text('Dialog Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.bleExample);
              }, child: const Text('Ble Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.remainingTimeExample);
              }, child: const Text('Remaining Time  Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.listViewExample);
              }, child: const Text('List View Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.batteryIconExample);
              }, child: const Text('Battery Icon Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.painterExample);
              }, child: const Text('Painter Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.sizedBoxExample);
              }, child: const Text('SizedBox Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.heatingExample);
              }, child: const Text('Heating Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.flutterTimerExample);
              }, child: const Text('Flutter Timer Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.counterExample);
              }, child: const Text('Counter Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.hookExample);
              }, child: const Text('Hook Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.fittedBoxExample);
              }, child: const Text('Fitted Box Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.overflowBoxExample);
              }, child: const Text('Overflow Box Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.aspectRatioExample);
              }, child: const Text('Aspect Ratio Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.fractionallySizedBoxExample);
              }, child: const Text('Fractionally Sized Box Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.clipRectExample);
              }, child: const Text('Clip Rect Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.uniLineExample);
              }, child: const Text('Uni Line Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.recordExample);
              }, child: const Text('Record Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {

                // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                //   return const WillPopScopeExample();
                // }));

                Get.to(const WillPopScopeExample());


              }, child: const Text('Will Pop Scope Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.layoutExample);
              }, child: const Text('Layout Example')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.shareCSVFileExample);
              }, child: const Text('分享CSV文件')),


              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.dropdownButtonExample);
              }, child: const Text('测试 Dropdown 按钮')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.nestedScrollViewExample);
              }, child: const Text('NestedScrollView 使用示例')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.nestedScrollViewExample2);
              }, child: const Text('NestedScrollView 使用示例2')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.nestedScrollViewBase);
              }, child: const Text('NestedScrollView 使用示例3')),

              const SizedBox(height: 5,),

              TextButton(onPressed: () {
                Get.toNamed(Routes.nestedScrollViewBase3);
              }, child: const Text('NestedScrollView 使用示例4')),

              const SizedBox(height: 40,),

            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

}
