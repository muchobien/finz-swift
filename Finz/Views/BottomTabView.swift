//
//  BottomTabView.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 8/6/22.
//

import SwiftUI

struct BottomTabView: View {
    var body: some View {
        TabView {
            TransactionsView()
                .tabItem {
                    Label("Transactions", systemImage: "list.bullet.rectangle.portrait.fill")
                }
            AnalyticsView()
                .tabItem {
                    Label("Analytics", systemImage: "chart.bar.xaxis")
                }
            AssetsView()
                .tabItem {
                    Label("Assets", systemImage: "square.stack.3d.up.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
    }
}

struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView()
    }
}
