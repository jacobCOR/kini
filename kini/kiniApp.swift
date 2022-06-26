//
//  kiniApp.swift
//  kini
//
//  Created by Jacob Ortmann on 6/25/22.
//

import SwiftUI

@main
struct kiniApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
