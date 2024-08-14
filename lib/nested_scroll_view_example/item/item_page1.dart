import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPage1 extends StatefulWidget {
  int pageIndex;
  ItemPage1(this.pageIndex, {super.key});

  @override
  State<ItemPage1> createState() => _TestPageState();
}


class _TestPageState extends State<ItemPage1> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
        child: Container(
          alignment: Alignment.bottomLeft,
          height: 1000,
          child: Text("这是第${widget.pageIndex}个页面"),
        ),
    );
  }
}