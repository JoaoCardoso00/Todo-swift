//
//  TaskManager.swift
//  Todo-list
//
//  Created by joao cardoso on 09/12/23.
//

import Foundation

class TaskManager: ObservableObject {
    @Published var tasks: [TaskModel] = []

    func addTask(taskName: String) {
        self.tasks.append(TaskModel(task: taskName, isComplete: false))
    }

    func toggleCompleteTask(id: UUID) {
        if let index = self.tasks.firstIndex(where: { $0.id == id }) {
            let prev = self.tasks[index].isComplete
            self.tasks[index].isComplete = prev == true ? false : true
        }
    }

    func deleteTask(id: UUID) {
        if let index = self.tasks.firstIndex(where: { $0.id == id }) {
            self.tasks.remove(at: index)
        }
    }
}
