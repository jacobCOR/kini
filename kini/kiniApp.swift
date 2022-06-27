//
//  kiniApp.swift
//  kini
//
//  Created by Jacob Ortmann on 6/25/22.
//

import SwiftUI

@main
struct kiniApp: App {
    
    let context = DataController.shared.persistentContainer.viewContext

    var body: some Scene {
        WindowGroup {
            #if os(macOS)
            KiniLaunchView()
                .environment(\.managedObjectContext, context)
                .frame(minWidth: 600, maxWidth: .infinity, minHeight: 300, maxHeight: .infinity, alignment: .center)
            #endif
        }.windowStyle(.hiddenTitleBar)
    }
}
