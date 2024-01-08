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
        Button("Hello world") {
            print(type(of: self.body))
            isRed.toggle()
        }
        .background( isRed ? .red : .green )
        .frame(width: 200, height: 200)
    }
}

#Preview {
    ContentView()
}
