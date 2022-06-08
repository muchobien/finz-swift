//
//  TransactionsView.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 8/6/22.
//

import SwiftUI

struct TransactionsView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView {
                Form {
                
                }
                .searchable(text: $searchText)
                .navigationTitle("Transactions")
                
            
        }
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
    }
}
