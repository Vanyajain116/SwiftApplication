//
//  Goals.swift
//  XTracker
//
//  Created by Ishita Mundra on 2/4/22.
//

import SwiftUI

struct Goal: Identifiable{
    var id = UUID()
    let title: String
}

class GoalsViewModel: ObservableObject {
    @Published var goals: [Goal] = []
}

struct GoalsView: View {
    @StateObject var viewModel = GoalsViewModel()
    @State var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Section(header: Text("Add New Goal")) {
                    TextField("New Goal...", text: $text)
                        .padding()
                    
                    Button(action: {
                        self.tryToAddToList()
                    }, label: {
                        Text("Add To List")
                            .bold()
                            .frame(width: 250, height: 50, alignment: .center)
                            .background(Color.green)
                            .cornerRadius(8)
                            .foregroundColor(Color.white)
                    })

                }
                List {
                    ForEach(viewModel.goals) { goal in
                        GoalRow(title: goal.title)
                    }
                    .onDelete(perform: removeRows)
                    .onMove(perform: moveRows)
                }
            }
            .navigationTitle("Extracurrciular Goals")
        }
    }
    func tryToAddToList() {
        guard !text.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        
        let newGoal = Goal(title: text)
        viewModel.goals.append(newGoal)
        text = ""
    }
    
    func removeRows(at offsets: IndexSet) {
        viewModel.goals.remove(atOffsets: offsets)
    }
    
    func moveRows (source: IndexSet, destination: Int) {
        viewModel.goals.move(fromOffsets: source, toOffset: destination)
    }
}

struct GoalRow: View {
    let title: String
    var body: some View {
        Label(
            title: { Text(title) },
            icon: {Image(systemName: "checkmark.circle")}
        )

    }
}

struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsView()
    }
}

