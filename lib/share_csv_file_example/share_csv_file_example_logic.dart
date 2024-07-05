import 'dart:io';
import 'package:csv/csv.dart';
import 'package:excel/excel.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';


class ShareCsvFileExampleLogic extends GetxController {
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  void shareExcelFile() async {
    var excel = Excel.createExcel();
    excel.rename('Sheet1', 'kob智控考勤数据');
    Sheet sheetObject = excel['kob智控考勤数据'];
    // sheetObject.appendRow(['名字', '年纪']);

    CellStyle cellStyle = CellStyle(backgroundColorHex: ExcelColor.amber, fontFamily : getFontFamily(FontFamily.Calibri));


  }

  void shareCsvFile() async {
    List<List<dynamic>> data = [
      ['名字', '年纪'],
      ['\n'],
      [',b', 3.1],
      ['Alice', '28'],
      ['Bob', '30'],
      ['Simon', '42'],
    ];

    var file = await generateCsv(data);
    shareCsv(file);
  }


  Future<File> generateCsv(List<List<dynamic>> data) async {

    String csv = const ListToCsvConverter().convert(data);

    final directory = await getTemporaryDirectory();
    final path = "${directory.path}/kob智控考勤数据.csv";
    final file = File(path);
    await file.writeAsString(csv);

    return file;

  }

  Future<void> shareCsv(File file) async {

    var fileExists = await file.exists();

    // if (fileExists) {
    //   Share.shareXFiles([XFile(file.path, name: 'kob智控考勤数据', mimeType: 'text/csv',)],);
    // } else {
    //   debugPrint('-->> 要分享的文件不存在');
    // }
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
