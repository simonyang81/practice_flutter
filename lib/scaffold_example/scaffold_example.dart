/// Copyright openuse.io © 2022
/// FileName scaffold_example
/// 
/// @Author simonyang81@gmail.com
/// @Date 2023/2/20 12:03
///
/// @Description
///
///

import 'package:flutter/material.dart';

class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({super.key});

  @override
  State<ScaffoldExample> createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {

  final GlobalKey<ScaffoldState> _key = GlobalKey();
int _currentIndex = 0;
final List<Widget> _widgets = [
  const Center(child: Text('Home')),
  const Center(child: Text('我的')),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: const Text('Scaffold Example',),
        leading: IconButton(
          onPressed: () => _key.currentState?.openDrawer(),
          icon: const Icon(Icons.menu_open)
        ),
      ),
      // body: const Center(child: Text('Scaffold Example')),
      body: _widgets[_currentIndex],
      // persistentFooterButtons: [
      //   TextButton(onPressed: () {
      //   }, child: const Text('确认'),),
      //   TextButton(onPressed: () {
      //   }, child: const Text('取消'),)
      // ],
      drawer: const Drawer(child: Center(child: Text('Menu'))),
      drawerScrimColor: Colors.green,
      drawerEdgeDragWidth: 200,
      drawerEnableOpenDragGesture: true,
      bottomNavigationBar: BottomNavigationBar(
        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '我的'
          ),

        ],
        currentIndex: _currentIndex,
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
      ),
      extendBody: false,
    );
  }
}
