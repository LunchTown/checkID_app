//
//  CheckIDApp.swift
//  CheckID
//
//  Created by Satoshi Nishizuka on 2023/10/20.
//

import SwiftUI

@main
struct CheckIDApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
