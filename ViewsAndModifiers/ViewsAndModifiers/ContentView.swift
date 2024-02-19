//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Galih Samudra on 08/01/24.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        GridStack(rows: 4, columns: 5) { row, col in
            if row.isMultiple(of: 2) {
                if col.isMultiple(of: 2) {
                    Color.yellow
                } else {
                    Color.red
                }
            } else {
                if col.isMultiple(of: 2) {
                    Color.green
                } else {
                    Color.blue
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
