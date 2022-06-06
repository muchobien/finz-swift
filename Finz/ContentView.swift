//
//  ContentView.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 5/6/22.
//

import SwiftUI
#if DEBUG
import PulseUI
#endif

struct ContentView: View {
    var body: some View {
        TabView {
            
            Text("Hello").padding().tabItem{
                Label("Home", systemImage: "list.dash")
            }
#if DEBUG
            MainView().tabItem {
                Label("Debug", systemImage: "exclamationmark.triangle")
            }
#endif
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
