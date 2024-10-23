//
//  ContentView.swift
//  CoreDataSimpleExecise2
//
//  Created by newowner   on 11.10.2024.
//
import CoreData
import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(
        entity: Student.entity(),
        sortDescriptors: []
    ) var students: FetchedResults<Student>

    var body: some View {
        NavigationStack {
            List {
                ForEach(students, id: \.self) { student in
                    HStack {
                        Text(student.name ?? "Неизвестно")
                        Text(student.accessLevel ?? "Неизвестно")
                    }
                }
                .onDelete(perform: deleteStudents)
            }
            .navigationTitle("Аудитория")
            .toolbar {
                Button("Добавить") {
                    let firstNames = ["Ginny", "Harry", "Hermione", "Luna", "Ron"]
                    let lastNames = ["Granger", "Lovegood", "Potter", "Weasley"]

                    let chosenFirstName = firstNames.randomElement()!
                    let chosenLastName = lastNames.randomElement()!

                    let student = Student(context: managedObjectContext)
                    student.id = UUID()
                    student.name = "\(chosenFirstName) \(chosenLastName)"
                    student.accessLevel = "user"
                    student.status = "active"

                    try? managedObjectContext.save()
                }
            }
        }
    }
    
//MARK: DELETE STUDENTS
    func deleteStudents(at offsets: IndexSet) {
        for index in offsets {
            let student = students[index]
            managedObjectContext.delete(student)
        }
        try? managedObjectContext.save()
    }
}

#Preview {
    ContentView()
}
