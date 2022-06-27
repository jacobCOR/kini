//
//  TestProtocol.swift
//  kini
//
//  Created by Jacob Ortmann on 6/26/22.
//

import Foundation
import CoreData

protocol TestImplementation {
    var context: NSManagedObjectContext {get}
    var name: String {get}
    func addRows() throws
    func getRows() throws -> [Any]?
}
