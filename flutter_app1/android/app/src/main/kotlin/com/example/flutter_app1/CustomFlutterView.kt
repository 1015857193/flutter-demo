package com.example.flutter_app1

import android.view.View

class CustomFlutterView(context: Context, messenger: BinaryMessenger, viewId: Int, args: Map<String, Any>?) : PlatformView, MethodChannel.MethodCallHandler {

    val textView: TextView = TextView(context)
    private var methodChannel: MethodChannel

    init {
        args?.also {
            textView.text = it["text"] as String
        }
        methodChannel = MethodChannel(messenger, "com.flutter.guide.MyFlutterView")
        methodChannel.setMethodCallHandler(this)
    }

     fun getView(): View {

        return textView
    }

    fun dispose() {
        methodChannel.setMethodCallHandler(null)
    }

     fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        if (call.method == "setText") {
            val name = call.argument("name") as String?
            val age = call.argument("age") as Int?
            textView.text = "hello,$name,年龄：$age"
        } else if (call.method == "getData") {
            val name = call.argument("name") as String?
            val age = call.argument("age") as Int?

            var map = mapOf("name" to "hello,$name",
                    "age" to "$age"
            )
            result.success(map)
        } else {
            result.notImplemented()
        }
    }

}

