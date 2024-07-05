import 'package:flutter/material.dart';

class NestedScrollViewExample extends StatefulWidget {
  const NestedScrollViewExample({super.key});

  @override
  State<NestedScrollViewExample> createState() => _NestedScrollViewExampleState();
}

class _NestedScrollViewExampleState extends State<NestedScrollViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildNestedScroll(),
    );
  }

  Widget _buildNestedScroll() {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          const SliverAppBar(
            title: Text('标题', style: TextStyle(color: Colors.white)),
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            pinned: false,  // 标题栏固定，false表示标题栏不固定，也就是随着一起滚动
            leading: SizedBox(),  // 去掉返回按钮
          ),
        ];
      },
      body: _buildNestedScrollChild(),
    );
  }

  Widget _buildNestedScrollChild() {

    // 注意这里如果直接使用List会在List和header之间有一段空白的距离

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return ListTile(
                title: Text('测试数据 $index'),
              );
            },
            childCount: 100,
          ),
        ),
      ],
    );
  }
}