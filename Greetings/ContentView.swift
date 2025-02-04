//
//  ContentView.swift
//  Greetings
//
//  Created by Rob Ranf on 2/3/25.
//

import SwiftUI

struct ContentView: View {
    let messages: [BubbleModel] = [
        .init(text: "Hello Madison", color: .blue),
        .init(text: "Hi", color: .gray),
        .init(text: "Guess what?", color: .blue),
        .init(text: "What?", color: .gray),
        .init(text: "There is hot chocolate! And you're not in trouble! No ✋🏼🍑🔥", color: .blue),
        .init(text: "🥰☺️", color: .gray)
    ]

    var body: some View {
        ZStack {
            LinearGradient(colors: [.cyan, .blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .opacity(0.8)
            VStack(alignment: .leading) {
                BubbleView(text: messages[0].text, backgroundColor: messages[0].color)
                BubbleView(text: messages[1].text, backgroundColor: messages[1].color)
                BubbleView(text: messages[2].text, backgroundColor: messages[2].color)
                BubbleView(text: messages[3].text, backgroundColor: messages[3].color)
                BubbleView(text: messages[4].text, backgroundColor: messages[4].color)
                BubbleView(text: messages[5].text, backgroundColor: messages[5].color)
            }
            .padding()
        }
    }
}

func resizeImage(image: UIImage) -> CGImage {
    let size = image.size

    let width = size.width / 10.0
    let height = size.height / 10.0

    let newSize = CGSize(width: width, height: height)
    let rect = CGRect(x: 0, y: 0, width: width, height: height)

    UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
    image.draw(in: rect)
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()


    return newImage as! CGImage
}

#Preview {
    ContentView()
}
