/// Copyright openuse.io © 2022
/// FileName app_bar_example
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/2/22 00:07
///
/// @Description
///
///

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarExample extends StatefulWidget {
  const AppBarExample({Key? key}) : super(key: key);

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar Example'),
        // title: TabBar(
        //   controller: _tabController,
        //   tabs: const [
        //     Tab(text: '飞机', ),
        //     Tab(text: '火车', ),
        //     Tab(text: '汽车', ),
        //   ],
        // ),
        centerTitle: true,
        shadowColor: Colors.red,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        // shape: const RoundedRectangleBorder(
        //   side: BorderSide(
        //     color: Colors.blue,
        //     width: 5,
        //   )
        // ),
        // actions: [
        //   IconButton(
        //     onPressed: () {  },
        //     icon: const Icon(Icons.exposure_plus_1),
        //   ),
        //   IconButton(
        //     onPressed: () {  },
        //     icon: const Icon(Icons.exposure_plus_2),
        //   )
        // ],
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          tabs: const [
            Tab(text: '飞机', icon: Icon(Icons.airplanemode_active),),
            Tab(text: '火车', icon: Icon(Icons.train),),
            Tab(text: '汽车', icon: Icon(CupertinoIcons.car),),
          ],
        ),
        // shape: BorderDirectional(
        //     top: BorderSide(
        //       color: Colors.grey.shade300,
        //       width: 50,
        //     ),
        //   bottom: BorderSide(
        //     color: Colors.red,
        //     width: 50,
        //   ),
        //   start: BorderSide(
        //     color: Colors.green,
        //     width: 50,
        //   ),
        //   end: BorderSide(
        //     color: Colors.blue,
        //     width: 50,
        //   ),
        // ),
      ),
      body: const Center(child: Text('App Bar')),
    );
  }
}
