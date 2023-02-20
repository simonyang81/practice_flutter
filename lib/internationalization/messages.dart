/// Copyright openuse.io © 2022
/// FileName messages
/// 
/// @Author simonyang81@gmail.com
/// @Date 2022/9/28 10:05
///
/// @Description
///
///

import 'package:get/get.dart';

import 'intl_en_us.dart';
import 'intl_zh_cn.dart';

class Messages extends Translations {

  @override
  Map<String, Map<String, String>> get keys => {

    'zh_CN': intlZhCn,
    'en_US': intlEnUs,

  };

}