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
        centerTitle: true,
        shadowColor: Colors.red,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Column(children: [
        const SizedBox(height: 20),
        const Text('app bar example'),
        const SizedBox(height: 20,),
        TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: '飞机',
              icon: Icon(Icons.airplanemode_active),
            ),
            Tab(
              text: '火车',
              icon: Icon(Icons.train),
            ),
            Tab(
              text: '汽车',
              icon: Icon(CupertinoIcons.car),
            ),
          ],
        ),

        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              Center(child: Icon(Icons.airplanemode_active)),
              Center(child: Icon(Icons.train)),
              Center(child: Icon(CupertinoIcons.car)),
            ],
          ),
        ),
      ]),
    );
  }
}
