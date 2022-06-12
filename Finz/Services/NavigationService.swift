//
//  NavigationService.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 10/6/22.
//

import Foundation

class NavigationService: ObservableObject {
    @Published var rootStack: [NavigationRoute] = []
    @Published var activeTab = Tab.transactions

    public func pop() {
        rootStack.popLast()
    }

}

enum Tab {
    case transactions
    case assets
    case analytics
    case settings
}

enum NavigationRoute: String, Hashable {
    case pulse = "PULSE"
}
