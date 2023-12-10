//
//  Input.swift
//  Todo-list
//
//  Created by joao cardoso on 06/12/23.
//

import SwiftUI

struct Input: View {
    @Binding var text: String

    var strokeColor: Color {
        text.count > 0 ? Color(.brandPurple) : Color(.clear)
    }

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(Color("Gray-500"))
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(strokeColor, lineWidth: 2)
                )
            TextField("", text: $text, prompt: Text("Adicione uma nova tarefa")
                .foregroundStyle(Color("Gray-300")))
                .padding()
                .foregroundColor(Color("Gray-100"))
                .autocorrectionDisabled()
        }.frame(height: 50)
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
