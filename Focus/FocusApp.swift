//
//  FocusApp.swift
//  Focus
//
//  Created by Maria Civilis on 2025-05-10.
//

import SwiftUI
import SwiftData

@main
struct FocusApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            FocusPage.self,
            FocusSection.self,
            FocusItem.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
