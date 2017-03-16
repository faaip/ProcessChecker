//
//  StatusMenuController.swift
//  ProcessChecker_Menubar
//
//  Created by Frederik Tollund Juutilainen on 16/03/2017.
//  Copyright © 2017 Frederik Tollund Juutilainen. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {

    @IBOutlet weak var statusMenu: NSMenu!
    @IBOutlet weak var aClicked: NSMenuItem!
    
    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    let processChecker = ProcessChecker()
    
    override func awakeFromNib() {
        // Set icon
        let icon = NSImage(named: "statusIcon")
        icon?.isTemplate = true // best for dark mode
        statusItem.image = icon
        statusItem.menu = statusMenu
    }
    
    
    @IBAction func quitClicker(_ sender: NSMenuItem) {
        NSApplication.shared().terminate(self)
    }
    
    @IBAction func checkProcesses(_ sender: NSMenuItem){
//        statusItem.title = "a"
//        statusItem.menu = statusMenu
        processChecker.checkProcesses()
        
        let sel:Selector? = nil
        
        let menuItem = NSMenuItem(title: "weehu", action: sel, keyEquivalent: "")
        statusMenu.addItem(menuItem)
    }
    
}
