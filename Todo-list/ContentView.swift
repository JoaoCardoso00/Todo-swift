//
//  ContentView.swift
//  Todo-list
//
//  Created by joao cardoso on 05/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!").font(.custom("Inter-Regular", size: 20))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
