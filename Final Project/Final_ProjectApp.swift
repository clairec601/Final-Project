//
//  Final_ProjectApp.swift
//  Final Project
//
//  Created by Claire Chang on 7/14/23.
//

import SwiftUI

@main
struct Final_ProjectApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene { 
        WindowGroup {
            ContentView()
            ToDoContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
