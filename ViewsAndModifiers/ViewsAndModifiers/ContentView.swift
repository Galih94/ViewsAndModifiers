//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Galih Samudra on 08/01/24.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
        
    }
}

struct Watermark: ViewModifier {
    var text: String
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.gray)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.yellow
            Text("Hello world!")
                .titleStyle()
        }
        .frame(maxWidth: 300, maxHeight: 300
        )
        .watermarked(with: "made by Galih")
    }
}

#Preview {
    ContentView()
}
