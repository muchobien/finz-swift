//
//  AppDelegate.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 6/6/22.
//

import Foundation
import UIKit
import Pulse
import Logging

let logger = Logger(label: Bundle.main.bundleIdentifier!)

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        LoggingSystem.bootstrap(PersistentLogHandler.init)
        try! setupDatabase()
        logger.info("App initialized")
        return true
    }
}
