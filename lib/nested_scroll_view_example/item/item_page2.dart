import 'package:flutter/material.dart';

class ItemPage2 extends StatefulWidget {
  int pageIndex;

  ItemPage2(this.pageIndex, {super.key});

  @override
  State<ItemPage2> createState() => _TestPageState();

}

//lib/code/main_data.dart
class _TestPageState extends State<ItemPage2>  with AutomaticKeepAliveClientMixin {

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return  ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("页面 ${widget.pageIndex}测试数据$index"),
          );
        },
        itemCount: 100,
    );
  }

  @override
  bool get wantKeepAlive => true;

}