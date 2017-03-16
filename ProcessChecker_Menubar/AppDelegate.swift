//
//  AppDelegate.swift
//  ProcessChecker_Menubar
//
//  Created by Frederik Tollund Juutilainen on 16/03/2017.
//  Copyright © 2017 Frederik Tollund Juutilainen. All rights reserved.
//

import Cocoa

// http://footle.org/WeatherBar/

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)

    @IBOutlet weak var window: NSWindow!

    @IBAction func quitClicker(_ sender: NSMenuItem) {
        NSApplication.shared().terminate(self)
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        statusItem.title = "WeatherBar"
        statusItem.menu = statusMenu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

