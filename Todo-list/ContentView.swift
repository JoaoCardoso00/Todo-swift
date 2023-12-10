//
//  ContentView.swift
//  Todo-list
//
//  Created by joao cardoso on 05/12/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var taskManager: TaskManager
    @State var taskName = ""

    var numCreatedTasks: Int { taskManager.tasks.count }
    var numCompletedTasks: Int {
        taskManager.tasks.filter { $0.isComplete == true }.count
    }

    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.gray700.ignoresSafeArea(edges: .top).frame(height: 173)
                Color.gray600.ignoresSafeArea(edges: .bottom)
            }
            VStack {
                Image("Logo").padding(47)
                HStack {
                    Input(text: $taskName)
                    CreateButton {
                        taskManager.addTask(taskName: taskName)
                        taskName = ""
                    }
                }
                HStack {
                    HStack {
                        Text("Criadas").foregroundStyle(Color(.brandBlue)).fontWeight(.bold)
                        ZStack {
                            RoundedRectangle(cornerRadius: 50).foregroundStyle(Color(.gray400))
                            Text("\(numCreatedTasks)")
                                .fontWeight(.bold)
                                .foregroundStyle(Color(.gray100))
                        }.frame(width: 30, height: 15)
                    }
                    Spacer()
                    HStack {
                        Text("Concluídas").foregroundStyle(Color(.brandPurple)).fontWeight(.bold)
                        ZStack {
                            RoundedRectangle(cornerRadius: 50).foregroundStyle(Color(.gray400))
                            Text("\(numCompletedTasks)")
                                .fontWeight(.bold)
                                .foregroundStyle(Color(.gray100))
                        }.frame(width: 30, height: 15)
                    }
                }.padding(20)
                Divider().overlay(.gray300)
                ScrollView {
                    VStack(spacing: 10) {
                        Spacer().frame(height: 20) // Top padding

                        ForEach(taskManager.tasks, id: \.id) { task in
                            Task(onCompleteChange: taskManager.toggleCompleteTask, onDelete: taskManager.deleteTask, task: task)
                        }
                    }
                }.scrollIndicators(.hidden)
            }.padding()
        }
    }
}

#Preview {
    ContentView().environmentObject(TaskManager())
}
