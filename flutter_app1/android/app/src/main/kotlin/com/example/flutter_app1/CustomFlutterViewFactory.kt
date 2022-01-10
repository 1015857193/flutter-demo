package com.example.flutter_app1



class CustomFlutterViewFactory(val messenger: BinaryMessenger) : PlatformViewFactory(StandardMessageCodec.INSTANCE) {

    override fun create(context: Context, viewId: Int, args: Any?): PlatformView {
        val flutterView = CustomFlutterView(context, messenger, viewId, args as Map<String, Any>?)
        return flutterView
    }

}
