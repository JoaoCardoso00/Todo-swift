//
//  TaskList.swift
//  Todo-list
//
//  Created by joao cardoso on 10/12/23.
//

import SwiftUI

struct TaskList: View {
    @EnvironmentObject var taskManager: TaskManager

    var isListEmpty: Bool {
        taskManager.tasks.count == 0
    }

    var body: some View {
        if isListEmpty {
            VStack {
                Image(.clipboard).padding()
                Text("Você ainda não tem tarefas cadastradas").foregroundStyle(Color(.gray300)).fontWeight(.bold)
                Text("Crie tarefas e organize seus itens a fazer").foregroundStyle(Color(.gray300))
                Spacer()
            }.padding(.top, 25)
        } else {
            ScrollView {
                VStack(spacing: 10) {
                    Spacer().frame(height: 20) // Top padding

                    ForEach(taskManager.tasks, id: \.id) { task in
                        Task(onCompleteChange: taskManager.toggleCompleteTask, onDelete: taskManager.deleteTask, task: task)
                    }
                }
            }.scrollIndicators(.hidden)
        }
    }
}

#Preview {
    TaskList().environmentObject(TaskManager())
}
