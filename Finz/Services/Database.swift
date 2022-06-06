//
//  Database.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 6/6/22.
//

import Foundation
import UIKit
import GRDB

var dbQueue: DatabaseQueue!

func setupDatabase() throws {
    let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! as NSString
    let databasePath = documentsPath.appendingPathComponent("finz.sqlite")
    
    dbQueue = try DatabaseQueue(path: databasePath)
    logger.info("Database initialized")
}
