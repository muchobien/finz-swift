//
//  AppDelegate.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 6/6/22.
//

import Foundation
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
            do {
                try setupDatabase()
            } catch {
                print(error)
            }
        return true
    }
}
