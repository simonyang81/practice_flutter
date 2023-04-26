import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tes_logic.dart';

class TesPage extends StatefulWidget {
  @override
  State<TesPage> createState() => _TesPageState();
}

class _TesPageState extends State<TesPage> {
  final logic = Get.put(TesLogic());

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void dispose() {
    Get.delete<TesLogic>();
    super.dispose();
  }
}