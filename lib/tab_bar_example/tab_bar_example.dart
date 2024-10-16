/// Copyright openuse.io © 2022
/// FileName tab_bar_example
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/2/22 12:25
///
/// @Description
///
///

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // title: const Text('Tab Bar Example'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const TabBar(
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 10, color: Colors.black),
            // labelPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            isScrollable: true,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              color: Colors.red,
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.green],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(10, 4),
                    blurRadius: 8.0
                )
              ]
              // borderRadius: const BorderRadius.all(Radius.circular(4.0)),
              // boxShadow: <BoxShadow>[   // 设置阴影
              //   BoxShadow(
              //     color: Colors.black.withOpacity(0.6),
              //     offset: const Offset(4, 40),
              //     blurRadius: 8.0
              //   ),
              // ],
            ),
            // indicatorPadding: EdgeInsets.all(10),

            // indicatorWeight: 5,
            // automaticIndicatorColorAdjustment: false,
            tabs: [
              Tab(text: '飞机', icon: Icon(Icons.airplanemode_active),),
              Tab(text: '火车', icon: Icon(Icons.train),),
              Tab(text: '汽车', icon: Icon(CupertinoIcons.car),),
            ],
          ),
        ),

        body: const TabBarView(children: [
          Icon(Icons.airplanemode_active),
          Icon(Icons.train),
          Icon(CupertinoIcons.car),
        ]),

      ),
    );
  }
}
