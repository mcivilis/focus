//
//  ContentView.swift
//  Focus
//
//  Created by Maria Civilis on 2025-05-10.
//

import SwiftUI
import SwiftData

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var pages: [FocusPage]

    var body: some View {
        CarouselView()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: FocusPage.self, inMemory: true)
}
