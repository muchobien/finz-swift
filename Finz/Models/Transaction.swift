//
//  Transaction.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 5/6/22.
//

import Foundation
import GRDB

struct Transaction: Codable, FetchableRecord, PersistableRecord, Identifiable {
    var id: UUID
    var accountId: UUID
    var categoryId: UUID
    var name: String
    var amount: Float
    var createdAt: Date
    var updatedAt: Date
}

extension Transaction {
    static let category = belongsTo(Category.self)
    var category: QueryInterfaceRequest<Category> {
        request(for: Transaction.category)
    }

    static let account = belongsTo(Account.self)
    var account: QueryInterfaceRequest<Account> {
        request(for: Transaction.account)
    }
}
