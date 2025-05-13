//
//  PageSampleData.swift
//  Focus
//
//  Created by Maria Civilis on 2025-05-12.
//

import Foundation

extension FocusPage {
    static var sampleData: [FocusPage] {
        [
            FocusPage(
                title: "My Focus Today",
                sections: [
                    FocusSection(title: "What am I inspired by", order: 0),
                    FocusSection(title: "Who do I need to become", order: 1)
                ]
            ),
            FocusPage(
                title: "Weekend Goals",
                sections: [
                    FocusSection(title: "What am I trying to accomplish", order: 0),
                    FocusSection(title: "Schedule", order: 1)
                ]
            )
        ]
    }
}
