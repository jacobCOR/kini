//
//  TestData.swift
//  kini
//
//  Created by Jacob Ortmann on 6/26/22.
//

import Foundation
import CoreData

class TestData: TestImplementation {
    
    enum TestError: Error {
        case funcNotImplemented
    }
    
    var context: NSManagedObjectContext
    var name: String
    
    init(context: NSManagedObjectContext, name: String) {
        self.context = context
        self.name = name
        
    }
    
    func addRows() throws {
        throw TestError.funcNotImplemented
        
    }
    
    func getRows() throws -> [Any]? {
        try! addRows()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: self.name)
        return try? context.fetch(fetchRequest)
    }
    
    func getRows<T>(count: Int) throws -> [T] {
        let fullList: [T] = try self.getRows() as! [T]
        return Array(fullList.prefix(count))
        
    }
}
