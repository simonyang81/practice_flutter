/// Copyright openuse.io © 2022
/// FileName material_example_1
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/2/18 16:14
///
/// @Description
///
///

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MaterialAppExample1 extends StatefulWidget {
  const MaterialAppExample1({Key? key}) : super(key: key);

  @override
  State<MaterialAppExample1> createState() => _MaterialAppExample1State();
}

class _MaterialAppExample1State extends State<MaterialAppExample1> {

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      scaffoldMessengerKey: _scaffoldMessengerKey,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Example 1'),
        ),
        body: const Center(
          child: Text('MaterialApp'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // showDialog(context: Get.context!, builder: (context) => const AlertDialog(title: Text('Alert'),),);
            // showDialog(context: _navigatorKey.currentState!.context, builder: (context) => const AlertDialog(title: Text('Alert'),),);

            // _scaffoldMessengerKey.currentState!.showSnackBar(const SnackBar(content: Text('SnackBar')));

            Navigator.of(_navigatorKey.currentState!.context).pushNamed('/B');

          },
          child: const Icon(Icons.add_alert, color: Colors.white),
        ),
      ),
      routes: {
        '/A': (context) => const A(),
        '/B': (context) => const B(),
      },

    );
  }
}

class A extends StatelessWidget {
  const A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('A'),
    );
  }
}

class B extends StatelessWidget {
  const B({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('B'),
    );
  }
}


