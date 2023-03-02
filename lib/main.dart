import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'material_app_example/material_app_example1.dart';
import 'routes/pages.dart';
import 'routes/routes.dart';

void main() {
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
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      getPages: Pages.routes,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
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
            
          ],
        ),
      ),
    );
  }
}
