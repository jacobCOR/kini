//
//  DataController.swift
//  kini
//
//  Created by Jacob Ortmann on 6/26/22.
//

import Foundation
import CoreData

class DataController {
    static let shared = DataController()
    
    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "kini")
        container.loadPersistentStores { description, error in
            if let error = error {
                print(error)
            }
            
        }
        return container
    }()
    
    private init() {
        
    }
    
    public func saveContext() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            }catch {
                print(error)
            }
        }
    }
}
