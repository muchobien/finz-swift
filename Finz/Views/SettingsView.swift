//
//  SettingsView.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 8/6/22.
//

import SwiftUI
#if DEBUG
import PulseUI
#endif

struct SettingsView: View {
    var body: some View {
        NavigationView {
                Form {
                Section("Developer") {
                    NavigationLink(destination: MainView()) {
                        Text("Pulse")
                    }
                    }
                }.navigationTitle("Settings")
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
