import 'package:flutter/material.dart';

class NestedScrollViewExample2 extends StatefulWidget {
  const NestedScrollViewExample2({super.key});

  @override
  State<NestedScrollViewExample2> createState() => _NestedScrollViewExampleState2();
}

class _NestedScrollViewExampleState2 extends State<NestedScrollViewExample2> with SingleTickerProviderStateMixin {

  // late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // _tabController = TabController(length: 3, vsync: this);
  }

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
          SliverAppBar(
            title: const Text('标题', style: TextStyle(color: Colors.white)),
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            // true: SliverAppBar 固定在页面顶部
            // false: SliverAppBar 随着滑动页面向上滑动
            pinned: true,
            // true: SliverAppBar 设置的title会随着向上滑动而隐藏，然后配置的bottom会显示在原AppBar的位置
            // false: SliverAppBar 设置的tile不会隐藏，然后配置的bottom会显示在原来AppBar设置的下面
            floating: true,
            // snap 必须在floating为true的情况下才能使用
            // true: 向下滑动页面时， SliverAppBar（以及其中配置的flexibleSpace内容）会立即显示出来
            // false: 向下滑动页面时，只要当ListView的数据滑动到顶部时，SLiverAppBar才会下拉显示出来
            snap: true,
            leading: const SizedBox(),  // 去掉返回按钮
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/523-1024x768.jpg',
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
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