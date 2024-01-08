//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Galih Samudra on 08/01/24.
//

import SwiftUI

struct CapsuleText: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.title)
            .padding(20)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    var body: some View {
        CapsuleText(text: "Winggadium Leviosa")
            .foregroundStyle(.brown)
        CapsuleText(text: "Stupify")
    }
}

#Preview {
    ContentView()
}
