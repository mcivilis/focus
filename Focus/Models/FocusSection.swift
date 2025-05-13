//
//  FocusSection.swift
//  Focus
//
//  Created by Maria Civilis on 2025-05-12.
//

import Foundation
import SwiftData

@Model
class FocusSection: Identifiable {
    @Attribute(.unique) var id: UUID
    var title: String
    var items: [FocusItem]
    var order: Int

    init(title: String, items: [FocusItem] = [], order: Int) {
        self.id = UUID()
        self.title = title
        self.items = items
        self.order = order
    }
}

