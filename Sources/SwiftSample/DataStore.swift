//
//  DataStore.swift
//  XTracker
//
//  Created by Ishita Mundra on 2/25/22.
//

import Foundation
import SwiftUI
import Combine

struct Task: Identifiable {
    var id = String()
    var taskItem = String()
    var date = String()
}

class TaskDataStore: ObservableObject {
    @Published var tasks = [Task]()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
}

