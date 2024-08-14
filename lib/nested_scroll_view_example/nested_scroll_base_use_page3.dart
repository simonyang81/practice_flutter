import 'package:flutter/material.dart';

import 'item/item_page1.dart';
import 'item/item_page2.dart';

class NestScrollBaseUsePage3 extends StatefulWidget {
  const NestScrollBaseUsePage3({super.key});

  @override
  State<NestScrollBaseUsePage3> createState() => _NestScrollBaseUsePage3State();
}

class _NestScrollBaseUsePage3State extends State<NestScrollBaseUsePage3> with SingleTickerProviderStateMixin {

  ///SliverAppBar中配置的flexibleSpa里展开的高度
  ///显示图片的高度与宽度保存数集合
  ///  [0]expandedHeight展开的高度
  ///  [1]显示顶部的图片的宽度
  ///  [2]显示顶部的图片的高度
  List<double> widgetSizeList = [];

  ///NestedScrollView的滚动控制器
  ///用来监听滚动距离
  ScrollController scrollController = ScrollController();
  ///在这里标签页面使用的是TabView所以需要创建一个控制器
  late TabController tabController;
  ///透明组件的透明度比率
  ///0.0 到一 1.0
  double slidRate = 0.0;

  ///页面初始化方法
  @override
  void initState() {
    super.initState();
    ///ScrollController添加滚动监听
    scrollController.addListener(controllerListener);
    ///初始化
    tabController = TabController(length: 3, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    ///在构建页面时 进行一次距离计算
    calculateExpandedHeight();
    ///构建页面的主体
    return Scaffold(
      ///页面主体内容
      ///RefreshIndicator与NestedScrollView组合下拉刷新是开发过程中常见的一种效果，
      ///但是由于NestedScrollView源码中有有内外两个controller控制器。
      ///（out控制header，inner控制body。只有当out不能滚动了才会滚动inner）
      ///一般情况下与RefreshIndicator组合使用时，下拉刷新效果失效。
      ///默认的RefreshIndicator要求的是必须是第一层的它才其效果
      ///NestedScrollView里面有很多能滚动的东西
      body: RefreshIndicator(
        ///可滚动组件在滚动时会发送ScrollNotification类型的通知
        ///RefreshIndicator会接收到NestedScrollView里面不同的滚动Widget发来的
        ///[ScrollNotification]消息通知
          notificationPredicate: (ScrollNotification notifation) {
            ///该属性包含当前ViewPort及滚动位置等信息
            ///pixels：当前滚动位置。
            ///maxScrollExtent：最大可滚动长度。
            ///extentBefore：滑出ViewPort顶部的长度；此示例中相当于顶部滑出屏幕上方的列表长度。
            ///extentInside：ViewPort内部长度；此示例中屏幕显示的列表部分的长度。
            ///extentAfter：列表中未滑入ViewPort部分的长度；此示例中列表底部未显示到屏幕范围部分的长度。
            ///atEdge：是否滑到了可滚动组件的边界（此示例中相当于列表顶或底部）
            ScrollMetrics scrollMetrics = notifation.metrics;
            if (scrollMetrics.minScrollExtent == 0) {
              return true;
            } else {
              return false;
            }
          },

          ///下拉刷新回调方法
          onRefresh: () async {
            ///模拟网络刷新 等待2秒
            await Future.delayed(Duration(milliseconds: 2000));
            ///返回值以结束刷新
            return Future.value(true);
          },
          ///页面的主体内容
          ///是一个 NestedScrollView
          child: buildNestedScrollView()),
    );
  }


  ///滚动监听方法
  void controllerListener() {
    ///相关距离数据保存在 [widgetSizeList]数组中
    if(widgetSizeList.isNotEmpty){
      ///获取滚动距离
      double offset = scrollController.offset;
      ///在这里配置的可折叠的高度为200;
      ///AppBar的高度为[kToolbarHeight] 56.0
      double toobarHeight = kToolbarHeight;
      ///当滑动的距离 offset 大于 [flagHeight]
      ///这个值时，代表折叠的内容区已开始隐藏
      double flagHeight = widgetSizeList[0] - toobarHeight * 3;
      if (offset > flagHeight) {
        ///计算透明度
        slidRate = (offset - flagHeight) / toobarHeight;
        debugPrint("滑动的距离 $offset slidRatio $slidRate");
        if (slidRate > 1) {
          slidRate = 1.0;
        }
        setState(() {});
      }
    }
  }

  void calculateExpandedHeight() {
    ///性能优化 这里计算的数据只计算一次就可以
    if (widgetSizeList.isEmpty) {
      ///在这里图片的宽度值与屏幕的宽度值相同
      ///当没有配置SliverAppBar中的bottom时，
      ///图片的高度与SliverAppBar中expandedHeight的高度相同
      ///当配置了bottom时，图片的高度为expandedHeigh-bottom的高度
      ///对于图片来讲，在实际项目开发中，为保证其有舒适的视觉体验
      ///一般会对图片进行等比变换
      ///在这里 图片的宽度是填充屏幕的，所以宽度是固定的
      ///如在实际项目开发中使用的是 width:height = 2:1
      double imageWidget = MediaQuery.of(context).size.width;

      ///那么图片的高度应为宽度的一半，计算如下
      double imageHeight = imageWidget / 2.0;

      ///那么 SliverAppBar的展开高度计算如下
      double expandedHeight = imageHeight;

      ///将计算的数据保存一下
      widgetSizeList.add(expandedHeight);
      widgetSizeList.add(imageWidget);
      widgetSizeList.add(imageHeight);
    }
  }

  Widget buildNestedScrollView() {
    ///滑动视图
    return NestedScrollView(
      ///配置控制器
      controller: scrollController,
      ///配置可折叠的头布局
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [buildSliverAppBar2()];
      },
      ///页面的主体内容
      body: buildChildWidget(),
    );
  }

  buildSliverAppBar2() {
    return SliverAppBar(
      title: buildHeader(),
      ///标题居中
      centerTitle: true,
      ///当此值为true时 SliverAppBar 会固定在页面顶部
      ///当此值为fase时 SliverAppBar 会随着滑动向上滑动
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
      expandedHeight: widgetSizeList[0],
      ///AppBar下的内容区域
      flexibleSpace: FlexibleSpaceBar(
        ///背景
        ///配置的是一个widget也就是说在这里可以使用任意的
        ///Widget组合 在这里直接使用的是一个图片
        background: buildFlexibleSpaceWidget(),
      ),
      bottom: buildFlexibleTooBarWidget(),
    );
  }

  Widget buildChildWidget() {
    return TabBarView(
      controller: tabController,
      children: <Widget>[
        ItemPage1(1),
        ItemPage2(2),
        ItemPage2(3),
      ],
    );
  }

  buildHeader() {
    ///透明组件
    return Opacity(
      ///透明度
      opacity: slidRate,
      child: const Text("商品详情"),
    );
  }

  buildFlexibleSpaceWidget() {
    return Stack(
      children: [
        ///用于显示图片的PageView
        buildImagePage(),
        ///角标显示
        buildCornerMark(),
      ],
    );
  }

  List<String> imagePathList = [
    "assets/images/2.0x/banner3.webp",
    "assets/images/2.0x/banner2.webp",
    "assets/images/2.0x/banner1.webp",
    "assets/images/2.0x/banner4.webp",
  ];

  int currentShowImageIndex = 0;

  Widget buildImagePage() {
    return PageView.builder(
      ///页面滚动后的回调
      ///参数 [pageIndex] 为当前页面的角标
        onPageChanged: (int pageIndex) {
          setState(() {
            currentShowImageIndex = pageIndex;
          });
        },
        ///滚动到边界时的回弹效果
        physics: const BouncingScrollPhysics(),
        ///图片个数
        itemCount: imagePathList.length,
        ///构建每个条目的显示
        itemBuilder: (BuildContext context, int index) {
          return buildFlexibleSpaceItemWidget(index);
        });
  }

  Widget buildFlexibleSpaceItemWidget(int index) {
    ///这里是加载使用的本地资源目录assets下的文件
    ///实际项目开发中一般使用的网络图片
    ///只需要替换这里使用网络方式加载即可
    return Image.asset(
      imagePathList[index],
      ///图片的高度
      height: widgetSizeList[2],
      ///显示图片的宽度，这里取用的是屏幕的宽度
      width: widgetSizeList[1],
      ///图片填充
      fit: BoxFit.fill,
    );
  }

  Widget buildCornerMark() {
    ///在层叠布局Stack中通过Positioned来定位子Widget
    ///这里是右下角对齐
    return Positioned(
      bottom: 12,
      right: 12,
      ///通过Container来实现一个半透明的体育场的背景
      child: Container(
        ///内边距的设置
        padding: const EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4),
        ///边框的装饰
        decoration: const BoxDecoration(
          ///半透明背景设置
            color: Color(0x50999999),
            ///圆角矩形的裁剪
            borderRadius: BorderRadius.all(Radius.circular(15))),
        ///显示角标的文本
        child: Text(
          "${currentShowImageIndex + 1}/${imagePathList.length}",
          style: const TextStyle(fontSize: 12, color: Colors.white),
        ),
      ),
    );
  }

  PreferredSize buildFlexibleTooBarWidget() {
    ///[PreferredSize]用于配置在AppBar或者是SliverAppBar
    ///的bottom中 实现 PreferredSizeWidget
    return PreferredSize(
      ///定义大小
      preferredSize: Size(MediaQuery.of(context).size.width, 48),
      ///配置任意的子Widget
      child: Container(
        alignment: Alignment.center,
        child: SizedBox(
          ///随着向上滑动，TabBar的宽度逐渐增大
          ///父布局Container约束为 center对齐
          ///所以程现出来的是中间x轴放大的效果
          width: MediaQuery.of(context).size.width * slidRate,
          ///透明度组件
          child: Opacity(
            ///使TabBar以透明过渡的方式逐渐显示出来
            opacity: slidRate,
            child: TabBar(
              controller: tabController,
              tabs: const <Widget>[
                Tab(
                  text: "标签一",
                ),
                Tab(
                  text: "标签二",
                ),
                Tab(
                  text: "标签三",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    ///释放资源
    scrollController.dispose();
    tabController.dispose();
  }

}
