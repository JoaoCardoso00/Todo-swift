//
//  Task.swift
//  Todo-list
//
//  Created by joao cardoso on 05/12/23.
//

import SwiftUI

struct Task: View {
    @State private var isFinished = false
    var onCompleteChange: (_ id: UUID) -> Void
    var onDelete: (_ id: UUID) -> Void
    var task: TaskModel

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("Gray-500"))
            HStack {
                ToggleBox(isChecked: $isFinished).onChange(of: isFinished) {
                    onCompleteChange(task.id)
                }
                Text(task.task).foregroundStyle(Color("Gray-100")).strikethrough(isFinished)
                    .lineLimit(1)
                Spacer()
                DeleteButton {
                    onDelete(task.id)
                }
            }.padding()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 65)
    }
}

struct parent: View {
    func onChange(id: UUID) {}
    func onDelete(id: UUID) {}

    var body: some View {
        Task(onCompleteChange: onChange, onDelete: onDelete, task: TaskModel(task: "Hello", isComplete: false))
    }
}

#Preview {
    parent()
}
