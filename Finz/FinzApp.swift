//
//  FinzApp.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 5/6/22.
//

import SwiftUI
import Logging



@main
struct FinzApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
