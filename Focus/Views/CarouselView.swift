//
//  CarouselView.swift
//  Focus
//
//  Created by Maria Civilis on 2025-05-12.
//

import SwiftUI
import SwiftData

struct CarouselView: View {
    @Query private var pages: [FocusPage]

    var body: some View {
        TabView {
            ForEach(pages) { page in
                PageCardView(page: page)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 32)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .automatic))
    }
}

#Preview {
    CarouselView()
}
