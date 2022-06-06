//
//  Account.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 5/6/22.
//

import Foundation
import GRDB

struct Account: Codable, FetchableRecord, PersistableRecord, Identifiable {
    var id: UUID
    var name: String
    var color: String
    var createdAt: Date
    var updatedAt: Date
}

extension Account {
    static let transactions = hasMany(Transaction.self)
    var transactions: QueryInterfaceRequest<Transaction> {
        request(for: Account.transactions)
    }
}
