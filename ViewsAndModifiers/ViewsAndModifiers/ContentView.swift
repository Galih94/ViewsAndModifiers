//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Galih Samudra on 08/01/24.
//

import SwiftUI

struct ContentView: View {
    let spell1 = Text("Winggadium Leviosa")
        .font(.title)
    let spell2 = Text("Diablo Protega")
        .font(.title2)
    let spell3 = Text("Stupify")
        .font(.title3)
    var body: some View {
        spell1
        spell2
        spell3
    }
}

#Preview {
    ContentView()
}
