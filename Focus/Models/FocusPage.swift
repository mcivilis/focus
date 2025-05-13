//
//  FocusPage.swift
//  Focus
//
//  Created by Maria Civilis on 2025-05-12.
//

import Foundation
import SwiftData

@Model
class FocusPage: Identifiable {
    @Attribute(.unique) var id: UUID
    var title: String
    var createdAt: Date
    var sections: [FocusSection]

    init(title: String, sections: [FocusSection] = []) {
        self.id = UUID()
        self.title = title
        self.createdAt = Date()
        self.sections = sections
    }
}

