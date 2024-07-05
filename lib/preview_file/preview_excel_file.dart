/// FileName preview_excel_file
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/9/26 09:14
///
/// @Description
///
///

import 'dart:io';
import 'dart:math';

import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class PreviewExcelFile extends StatefulWidget {

  const PreviewExcelFile({super.key});

  @override
  State<PreviewExcelFile> createState() => _PreviewExcelFileState();
}

class _PreviewExcelFileState extends State<PreviewExcelFile> {

  // static const platform = MethodChannel('com.example.practice_flutter');
  var excel = Excel.createExcel();
  String? filePath;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _previewExcel();
    });
  }

  Future<void> _previewExcel() async {
    try {

      getApplicationDocumentsDirectory().then((directory) async {

        filePath = p.join('/data/data/com.example.practice_flutter/cache', 'kob_202309.xlsx');

        var files = directory.listSync();
        for (var entity in files) {
          if (entity is File) {
            await entity.delete();
          }
        }

        Sheet sheetObject = excel['Sheet1'];
        CellStyle headerCellStyle
          = CellStyle(backgroundColorHex: ExcelColor.amber,
              textWrapping: TextWrapping.WrapText,
              verticalAlign: VerticalAlign.Center,
              horizontalAlign: HorizontalAlign.Center,
              fontFamily : getFontFamily(FontFamily.Calibri), fontColorHex: ExcelColor.white, fontSize: 12);

        var cellA0 = sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: 0));
        sheetObject.setRowHeight(0, 100.0);
        cellA0.value = const TextCellValue('1\n2\n3');
        cellA0.cellStyle = headerCellStyle;

        for (var i = 1; i <= 31; i++) {
          var cellR = sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: i, rowIndex: 0));
          cellR.value = TextCellValue('$i号');
          cellR.cellStyle = headerCellStyle;
        }

        CellStyle bodyCellStyle
          = CellStyle(backgroundColorHex: ExcelColor.white, fontFamily : getFontFamily(FontFamily.Calibri), fontColorHex: ExcelColor.amber, fontSize: 12);

        CellStyle bodyCellStyle4Warning
          = CellStyle(backgroundColorHex: ExcelColor.amber, fontFamily : getFontFamily(FontFamily.Calibri), fontColorHex: ExcelColor.amber, fontSize: 12);

        CellStyle bodyCellStyle4Warning2
          = CellStyle(backgroundColorHex: ExcelColor.amber, fontFamily : getFontFamily(FontFamily.Calibri), fontColorHex: ExcelColor.white, fontSize: 12);


        for (var row = 1; row < 50; row++) {

          var cellC0 = sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: row));
          cellC0.value = TextCellValue(generateRandomChineseName()); // dynamic values support provided;
          cellC0.cellStyle = bodyCellStyle;

          for (var i = 1; i <= 31; i++) {
            var cellC = sheetObject.cell(CellIndex.indexByColumnRow(columnIndex: i, rowIndex: row));
            var val1 = generateRandomTimeBetween8And9();
            var val2 = generateRandomTimeBetween18And19();
            cellC.value = TextCellValue('$val1, $val2');
            if (val1.compareTo('8:30') > 0 && val2.compareTo('18:00') < 0) {
              cellC.cellStyle = bodyCellStyle4Warning2;
            } else if (val1.compareTo('8:30') <= 0 && val2.compareTo('18:00') >= 0) {
              cellC.cellStyle = bodyCellStyle;
            } else {
              cellC.cellStyle = bodyCellStyle4Warning;
            }
          }
        }

        var fileBytes = excel.save();
        if (fileBytes == null) {
          return;
        }

        File(filePath!)
          ..createSync(recursive: true)
          ..writeAsBytesSync(fileBytes);

        setState(() {
        });

      });


    } on PlatformException catch (e) {
      debugPrint("Failed to preview excel: '${e.message}'.");
    }
  }

  String generateRandomChineseName() {
    const familyNames = '赵钱孙李周吴郑王';
    const givenNames = '建国自强明德志明克学如松';

    final rng = Random();

    // 随机选择一个姓氏
    final family = familyNames[rng.nextInt(familyNames.length)];

    // 随机选择1-2个名字字符
    final given = [
      givenNames[rng.nextInt(givenNames.length)],
      if (rng.nextBool()) givenNames[rng.nextInt(givenNames.length)]
    ].join();

    return '$family$given';
  }

  String generateRandomTimeBetween8And9() {
    final rng = Random();
    // 随机选择分钟数 (0-59)
    final minute = rng.nextInt(60).toString().padLeft(2, '0');
    return '8:$minute';
  }

  String generateRandomTimeBetween18And19() {
    final rng = Random();
    // 随机选择分钟数 (0-59)
    final minute = rng.nextInt(60).toString().padLeft(2, '0');
    final rng2 = Random();
    return '${rng2.nextBool() ? 17 : 18}:$minute';
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('文件预览'),
      ),
      body: filePath == null ? const SizedBox() : Center(
        child: TextButton(onPressed: () {
          OpenFile.open(filePath!);
          // final Uri uri = Uri.file(filePath!);
          // // launchUrl(uri);
          // platform.invokeMethod('previewExcel', {'path': filePath});

        }, child: const Text('生成报表', style: TextStyle(fontSize: 20),)),
      ),
    );


  }
}
