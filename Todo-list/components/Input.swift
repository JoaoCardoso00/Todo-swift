//
//  Input.swift
//  Todo-list
//
//  Created by joao cardoso on 06/12/23.
//

import SwiftUI

struct Input: View {
    @Binding var text: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: .infinity, height: 50)
                .foregroundColor(Color("Gray-500"))
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color("Brand Purple dark"), lineWidth: text.count > 0 ? 2 : 0)
                )
            TextField("", text: $text, prompt: Text("Adicione uma nova tarefa")
                .foregroundStyle(Color("Gray-300")))
                .padding()
                .foregroundColor(Color("Gray-100"))
        }
    }
}

struct InputParentExample: View {
    @State private var text = ""

    var body: some View {
        Input(text: $text)
    }
}

#Preview {
    InputParentExample().padding()
}
