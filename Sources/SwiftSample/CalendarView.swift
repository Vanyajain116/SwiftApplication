//
//  CalendarView.swift
//  XTracker
//
//  Created by Ishita Mundra on 2/25/22.
//

import SwiftUI
import Combine

struct CalendarView: View {
    
    @ObservedObject var taskStore = TaskDataStore()
    
    @State var newTask: String = ""
    @State var date = Date()
    
    var addTaskBar: some View {
        HStack {
            TextField("Add Task: ", text:self.$newTask)
            DatePicker(selection: $date, in:Date()..., displayedComponents: .date) {
            }
            
            Button(action:self.addNewTask, label: {
                Text("Add New")
            })
        }
    }
    
    func addNewTask() {
        taskStore.tasks.append(Task(
            id: String(taskStore.tasks.count + 1),
            taskItem: newTask,
            date: "On: " + taskStore.dateFormatter.string(from: date)
        ))
        self.newTask = ""
    }
    
    func deleteTask(at offsets: IndexSet) {
        taskStore.tasks.remove(atOffsets: offsets)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                addTaskBar.padding()
                List {
                    ForEach(self.taskStore.tasks) { task in
                        HStack {
                            Text(task.taskItem)
                            Spacer()
                            Text(task.date)
                        }
                    }.onDelete(perform: self.deleteTask)
                }.navigationBarTitle("Tasks").navigationBarItems(trailing: EditButton())
            }
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
