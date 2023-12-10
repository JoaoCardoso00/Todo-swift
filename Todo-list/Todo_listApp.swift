//
//  Todo_listApp.swift
//  Todo-list
//
//  Created by joao cardoso on 05/12/23.
//

import SwiftUI

@main
struct Todo_listApp: App {
    var taskManager = TaskManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(taskManager)
        }
    }
}
