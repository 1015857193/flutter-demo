package com.example.flutter_app1

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.plugins

class MainActivity : FlutterActivity() {
   override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
      //  flutterEngine.plugins.add(CustomPlugin())
       flutterEngine.plugins.add(CustomPlugin())
    }
}
