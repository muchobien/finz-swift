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
        BottomTabView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
