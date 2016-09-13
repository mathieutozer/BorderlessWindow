// Copyright 2004-present Facebook. All Rights Reserved.

import Cocoa

class BorderlessWindow : NSWindow {

  override init(contentRect: NSRect, styleMask style: NSWindowStyleMask, backing bufferingType: NSBackingStoreType, defer flag: Bool) {

    super.init(contentRect: contentRect, styleMask: [.fullSizeContentView, .titled], backing: bufferingType, defer:flag)
    self.titlebarAppearsTransparent = true
    self.titleVisibility = .hidden
  }

  override var canBecomeKey: Bool {
    get {
      return true
    }
  }
}
