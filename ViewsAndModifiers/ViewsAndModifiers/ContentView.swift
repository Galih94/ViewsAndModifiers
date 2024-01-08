//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Galih Samudra on 08/01/24.
//

import SwiftUI

struct ContentView: View {
    @State var isRed = false
    var body: some View {
        VStack {
            Text("1")
            Text("2")
            Text("3")
            Text("4")
        }
        .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}
