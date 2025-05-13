//
//  PageCardView.swift
//  Focus
//
//  Created by Maria Civilis on 2025-05-12.
//

import SwiftUI

struct PageCardView: View {
    let page: FocusPage

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(page.title)
                .font(.title2)
                .bold()

            ForEach(page.sections.sorted(by: { $0.order < $1.order })) { section in
                Text("• \(section.title)")
                    .font(.body)
            }

            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}

#Preview {
    PageCardView(page: FocusPage.sampleData.first!)
}
