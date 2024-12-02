//
//  AttentiveScrollApp.swift
//  AttentiveScroll
//
//  Created by Irina Deeva on 02/12/24.
//

import SwiftUI

@main
struct AttentiveScrollApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
