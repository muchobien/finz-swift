//
//  BottomTabView.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 8/6/22.
//

import SwiftUI

struct BottomTabView: View {
    @EnvironmentObject var navigation: NavigationService

    var body: some View {
        TabView(selection: $navigation.activeTab) {
            TransactionsView()
                .tabItem {
                    Label("Transactions", systemImage: "list.bullet.rectangle.portrait.fill")
                }.tag(Tab.transactions)
            AnalyticsView()
                .tabItem {
                    Label("Analytics", systemImage: "chart.bar.xaxis")
                }.tag(Tab.analytics)
            AssetsView()
                .tabItem {
                    Label("Assets", systemImage: "square.stack.3d.up.fill")
                }.tag(Tab.assets)
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }.tag(Tab.settings)
        }
    }
}

struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView()
    }
}
