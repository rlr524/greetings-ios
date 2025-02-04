//
//  MadisonView.swift
//  Greetings
//
//  Created by Rob Ranf on 2/3/25.
//

import SwiftUI

struct MadisonView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.purple, .indigo, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            VStack {
                Image("madison")
                    .resizable()
                    .frame(width: 295, height: 340)

                Text("Hello, Madison")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    MadisonView()
}
