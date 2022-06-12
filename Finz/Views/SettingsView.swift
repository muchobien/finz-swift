//
//  SettingsView.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 8/6/22.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var navigation: StackNavigation

    var body: some View {
        NavigationView {
                Form {
                    Section("Developer") {
                        Button("Pulse") {

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
