//
//  TransactionsView.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 8/6/22.
//

import SwiftUI

struct TransactionsView: View {
    @State private var searchText = ""
    @State private var show = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(0...10, id: \.self) { index in
                        AssetComponent()
                        if (index != 10) {
                            Divider()
                        }
                    }
                }
                .padding([.horizontal,.bottom])
                .frame(maxWidth: .infinity)
            }
            
                .searchable(text: $searchText)
                .navigationTitle("Transactions")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action:{
                            show = true
                        }) {
                            Label("Add", systemImage: "plus.circle.fill")
                        }
                    }
                }
                .sheet(isPresented: $show) {
                    Text("Bottom Sheet")
                        .presentationDetents([.medium,.large])
                }

        }
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
    }
}
