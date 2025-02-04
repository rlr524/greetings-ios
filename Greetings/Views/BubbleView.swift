//
//  MeiView.swift
//  Greetings
//
//  Created by Rob Ranf on 2/3/25.
//

import SwiftUI

/// A view for rendering chat bubbles.
struct BubbleView: View {
    let text: String
    let backgroundColor: Color

    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(.white)
            .background(backgroundColor)
            .cornerRadius(20)
            .shadow(color: backgroundColor, radius: 5, x: 5, y: 5)
    }
}

#Preview {
    BubbleView(text: "Hello, Madison", backgroundColor: .gray)
}
