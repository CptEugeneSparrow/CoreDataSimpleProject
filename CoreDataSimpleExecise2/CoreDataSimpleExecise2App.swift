//
//  CoreDataSimpleExecise2App.swift
//  CoreDataSimpleExecise2
//
//  Created by newowner   on 11.10.2024.
//
import CoreData
import SwiftUI

@main
struct CoreDataSimpleExecise2App: App {
    let persistenceController = PersistenceController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
