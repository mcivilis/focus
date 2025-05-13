//
//  FocusItem.swift
//  Focus
//
//  Created by Maria Civilis on 2025-05-12.
//

import Foundation
import SwiftData

enum FocusItemType: String, Codable {
    case textBox
    case checklist
    case countUp
    case countDown
    case counterWithGoal
    case streakTracker
    case horizontalTextList
    case timeline
    case labelWithIcon
    case image
    case quote
    case tally
    case bestSoFar
    case recurringTask
}

@Model
class FocusItem: Identifiable {
    @Attribute(.unique) var id: UUID
    var type: FocusItemType
    var contentData: Data
    var order: Int

    init(type: FocusItemType, contentData: Data, order: Int) {
        self.id = UUID()
        self.type = type
        self.contentData = contentData
        self.order = order
    }
}

