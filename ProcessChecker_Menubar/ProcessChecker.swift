//
//  ProcessChecker.swift
//  ProcessChecker_Menubar
//
//  Created by Frederik Tollund Juutilainen on 16/03/2017.
//  Copyright © 2017 Frederik Tollund Juutilainen. All rights reserved.
//

import Foundation
import AppKit

class ProcessChecker{
    init() {
        print("Initializing process checker")
        checkProcesses()
    }
    
    func checkProcesses(){
        Swift.print("Checking processes...")
        
        // Get all running applications
        let workspace = NSWorkspace.shared()
        let applications = workspace.runningApplications
        
        for app in applications {
//            print(app)
//            // text if textedit is running
            let processName = app.localizedName!.lowercased()
            if processName.range(of:"textedit") != nil {
                print("exists")
            }
            
        }
        

    }
}
