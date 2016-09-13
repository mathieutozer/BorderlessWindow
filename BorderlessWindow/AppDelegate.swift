//
//  AppDelegate.swift
//  BorderlessWindow
//
//  Created by Mathieu Tozer on 9/13/16.
//  Copyright © 2016 Tozer. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  var windowController: NSWindowController?
  
  func applicationDidFinishLaunching(_ aNotification: Notification) {
    let borderlessWindow = BorderlessWindow(contentViewController: ViewController(nibName: nil, bundle: nil)!)
    windowController = NSWindowController.init(window: borderlessWindow)
    windowController?.showWindow(self)
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }


}

