//
//  ToDoContentView.swift
//  Final Project
//
//  Created by Claire Chang on 7/20/23.
//

import SwiftUI

struct ToDoContentView: View {
    @Environment(\.managedObjectContext) var context
    private func deleteTask(offsets: IndexSet) {
            withAnimation {
                offsets.map { toDoItems[$0] }.forEach(context.delete)

                do {
                    try context.save()
                } catch {
                    print(error)
                }
            }
        }
    @FetchRequest(
        entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    var toDoItems: FetchedResults<ToDo>
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack{
                Text("To-Do List")
                    .font(.system(size:40))
                    .fontWeight(.semibold)
                    
                Spacer()
                
                Button(action: {
                    self.showNewTask = true
                }){
                    Text("+")
                        .font(.system(size:40))
                }
            }
            .padding() 
            Spacer()
            
            List {
                ForEach(toDoItems){ toDoItem in
                    if toDoItem.isImportant == true {
                        Text("!!" + (toDoItem.title ?? "No title"))
                    }
                    else {
                        Text(toDoItem.title ?? "No title")
                    }
                }
                //.onDelete(perform: deleteTask)
            }
            .listStyle(.plain)
            .animation(.easeOut, value: showNewTask)
        }
        
        if showNewTask {
            NewToDoView(title: "", isImportant: false, showNewTask: $showNewTask)
        }
    }
    
    struct ToDoContentView_Previews: PreviewProvider {
        static var previews: some View {
            ToDoContentView()
        }
    }
}
