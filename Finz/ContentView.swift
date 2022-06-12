//
//  ContentView.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 5/6/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var navigation = NavigationService()
    var body: some View {
        NavigationStack(path: $navigation.rootStack) {
            BottomTabView().environmentObject(navigation)
        }.navigationDestination(for: Navigation.self) { path in
            switch path {
            case .pulse: Text("Pulse")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class StackNavigation: ObservableObject {
    @Published var stack: [Navigation] = []
}

enum Navigation: String, Hashable {
    case pulse = "PULSE"
}
