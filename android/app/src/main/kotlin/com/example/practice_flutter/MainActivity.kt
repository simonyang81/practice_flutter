package com.example.practice_flutter

import android.content.Intent
import android.net.Uri
import android.os.Build
import androidx.core.content.FileProvider
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.File


class MainActivity: FlutterActivity() {

    // 定义一个静态变量
    companion object {
        const val CHANNEL = "com.example.practice_flutter"
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "previewExcel") {

                val path = call.argument<String>("path")
                println("-->> path: $path")
                val file: File = File(path)
                if (file.exists()) {
                    var intent = getExcelFileIntent(file)
                    activity.startActivity(intent)
                } else {
                    println("-->> 文件不存在")
                }

                result.success("Android ${android.os.Build.VERSION.RELEASE}")
            } else {
                result.notImplemented()
            }
        }

    }

    private fun getExcelFileIntent(param: File): Intent? {
        val intent = Intent(Intent.ACTION_VIEW)
        intent.addCategory("android.intent.category.DEFAULT")
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)

        val path: Uri
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {

            println("-->> param: $param")

            path = FileProvider.getUriForFile(activity, activity.packageName + ".fileprovider", param)
            intent.flags = Intent.FLAG_GRANT_READ_URI_PERMISSION
        } else {
            path = Uri.fromFile(param)
        }

        intent.setDataAndType(path, "application/vnd.ms-excel")
        intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK
        intent.flags = Intent.FLAG_GRANT_WRITE_URI_PERMISSION;

        return intent


    }

}
