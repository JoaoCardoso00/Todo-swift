//
//  ToggleBox.swift
//  Todo-list
//
//  Created by joao cardoso on 05/12/23.
//

import SwiftUI

struct IOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.circle" : "circle")
                    .foregroundStyle(configuration.isOn ? Color("Gray-100") : Color("Brand Blue"))
                    .background(configuration.isOn ? Color("Brand Purple dark") : Color(.clear))
                    .clipShape(Circle())

                configuration.label
            }
        }
    }
}

struct ToggleBox: View {
    @Binding var isChecked: Bool

    var body: some View {
        Toggle(isOn: $isChecked) {}.toggleStyle(IOSCheckboxToggleStyle())
    }
}

struct ParentViewExample: View {
    @State private var isChecked = false

    var body: some View {
        ToggleBox(isChecked: $isChecked)
    }
}

#Preview {
    ParentViewExample()
}
