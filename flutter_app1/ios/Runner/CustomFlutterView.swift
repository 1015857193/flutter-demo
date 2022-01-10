//
//  CustomFlutterView.swift
//  Runner
//
//  Created by ksmacmini on 2021/12/2.
//

import Foundation
import Flutter

class CustomFlutterView: NSObject,FlutterPlatformView {
    
    let label = UILabel()
    var age:Int = 0
        

    init(_ frame: CGRect,viewID: Int64,args :Any?,messenger :FlutterBinaryMessenger) {
            super.init()
            if(args is NSDictionary){
                let dict = args as! NSDictionary
                self.label.text  = dict.value(forKey: "text") as! String
            }else{

            self.label.text = "test-test"
            }

            let methodChannel = FlutterMethodChannel(name: "com.flutter.guide.FlutterView_\(viewID)", binaryMessenger: messenger)
            methodChannel.setMethodCallHandler { (call, result) in
              
                
                let method:String = call.method
                if(method == "getData") {
                    
                    result(["message":"我是原生数据\(self.age)"]);
                    
                        
                }
                
                if (method == "setText") {
            
                    if let dict = call.arguments as? Dictionary<String, Any> {
                        let name:String = dict["name"] as? String ?? ""
                        let age:Int = dict["age"] as? Int ?? -1
                        self.age = age
                        self.label.text = "hello,\(name),年龄：\(age)"
                        
                    }
              
                }
            }
        }
        
        func view() -> UIView {
            return label
        }  
    
}
