import 'package:flutter/material.dart';

class NestScrollBaseUsePage extends StatefulWidget {
  const NestScrollBaseUsePage({super.key});

  @override
  State<NestScrollBaseUsePage> createState() => _NestScrollBaseUsePageState();
}

class _NestScrollBaseUsePageState extends State<NestScrollBaseUsePage> {

  ///SliverAppBar中配置的flexibleSpace展开的高度
  double expandedHeight = 200.0;

  ///NestedScrollView的滚动控制器
  final ScrollController _scrollController = ScrollController();

  ///透明组件的透明度比率
  ///0.0 -1.0
  double slidRatio = 0.0;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      ///获取滚动距离
      double offset = _scrollController.offset;

      ///在这里配置的可折叠的高度为200;
      ///AppBar的高度为[kToolbarHeight] 56.0
      double toolbarHeight = kToolbarHeight;

      ///当滑动的距离 offset 大于 [flagHeight]
      ///这个值时，代表折叠的内容区已开始隐藏
      double flagHeight = 200 - toolbarHeight * 2;
      if (offset > flagHeight) {
        ///计算透明度
        slidRatio = (offset - flagHeight) / toolbarHeight;
        debugPrint("-->> 滑动的距离 $offset slidRatio $slidRatio");
        if (slidRatio > 1) {
          slidRatio = 1.0;
        }
        setState(() {});
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildSingleScrollView(),
    );
  }

  Widget _buildSingleScrollView() {
    return NestedScrollView(
      controller: _scrollController,

      ///超出显示内容区域的Widget
      body: _buildChildWidget(),

      ///配置可折叠的头布局
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [_buildSliverAppBar()];
      },
    );
  }

  _buildSliverAppBar() {
    return SliverAppBar(
      title: _buildHeader(),

      ///标题居中
      centerTitle: true,

      ///当此值为true时 SliverAppBar 会固定在页面顶部
      ///当此值为false时 SliverAppBar 会随着滑动向上滑动
      pinned: true,

      ///当值为true时 SliverAppBar设置的title会随着上滑动隐藏
      ///然后配置的bottom会显示在原AppBar的位置
      ///当值为false时 SliverAppBar设置的title会不会隐藏
      ///然后配置的bottom会显示在原AppBar设置的title下面
      floating: false,

      ///当snap配置为true时，向下滑动页面，SliverAppBar（以及其中配置的flexibleSpace内容）会立即显示出来，
      ///反之当snap配置为false时，向下滑动时，只有当ListView的数据滑动到顶部时，SliverAppBar才会下拉显示出来。
      snap: false,

      ///展开的高度
      expandedHeight: expandedHeight,

      ///AppBar下的内容区域
      flexibleSpace: FlexibleSpaceBar(
        ///背景
        ///配置的是一个widget也就是说在这里可以使用任意的
        ///Widget组合 在这里直接使用的是一个图片
        background: Image.asset(
          "assets/images/523-1024x768.jpg",
          height: expandedHeight,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
      ),
    );
  }


  Widget _buildChildWidget() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("测试数据$index"),
        );
      },
      itemCount: 100,
    );
  }

  Widget _buildHeader() {
    ///透明组件
    return Opacity(
      ///透明度
      opacity: slidRatio,
      child: const Text("这里是标题"),
    );
  }


}
