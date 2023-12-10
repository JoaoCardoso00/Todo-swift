//
//  TaskModel.swift
//  Todo-list
//
//  Created by joao cardoso on 09/12/23.
//

import Foundation

struct TaskModel {
    var id = UUID()
    var task: String
    var isComplete: Bool
}
