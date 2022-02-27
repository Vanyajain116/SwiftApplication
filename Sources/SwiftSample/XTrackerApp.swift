//
//  XTrackerApp.swift
//  XTracker
//
//  Created by Ishita Mundra on 1/30/22.
//

import SwiftUI

struct WindowGroup<Content> where Content : View

@main
struct XTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
