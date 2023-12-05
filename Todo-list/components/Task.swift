//
//  Task.swift
//  Todo-list
//
//  Created by joao cardoso on 05/12/23.
//

import SwiftUI

struct Task: View {
    @State var isFinished = false
    var task: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: .infinity)
                .foregroundColor(Color("Gray-500"))
            HStack {
                ToggleBox(isChecked: $isFinished)
                Text(task).foregroundStyle(Color("Gray-100")).strikethrough(isFinished)
                Spacer()
                DeleteButton {}
            }.padding()
        }.frame(width: .infinity, height: 65)
    }
}

#Preview {
    Task(task: "Hello world").padding()
}
