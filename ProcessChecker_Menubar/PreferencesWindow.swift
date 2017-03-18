//
//  PreferencesWindow.swift
//  ProcessChecker_Menubar
//
//  Created by Frederik Tollund Juutilainen on 18/03/2017.
//  Copyright © 2017 Frederik Tollund Juutilainen. All rights reserved.
//

import Cocoa

class PreferencesWindow: NSWindowController {
    
    override var windowNibName : String! {
        return "PreferencesWindow"
    }

    override func windowDidLoad() {
        super.windowDidLoad()
        
        self.window?.center()
        self.window?.makeKeyAndOrderFront(nil)
        NSApp.activate(ignoringOtherApps: true)
    }
    
}
