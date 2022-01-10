//
//  CustomFlutterViewFactory.swift
//  Runner
//
//  Created by ksmacmini on 2021/12/2.
//

import Foundation
import Flutter

class CustomFlutterViewFactory: NSObject,FlutterPlatformViewFactory{
    
    var messemger:FlutterBinaryMessenger?
    
    override init() {
        super.init()
    }
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
   func setBinaryMessage(messemger:FlutterBinaryMessenger) {

    self.messemger = messemger;
        
    }

    func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return CustomFlutterView(frame,viewID: viewId,args: args,messenger: self.messemger!) as FlutterPlatformView
       }
       
       func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
           return FlutterStandardMessageCodec.sharedInstance()
       }
    
    
    
    
    }
