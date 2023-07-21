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
        ZStack{
            Color("AccentColor")
                .ignoresSafeArea()
            Circle()
                .scale(1.7)
                .foregroundColor(Color(red: 255/255, green: 201/255, blue: 201/255).opacity(0.50))
           
            VStack {
                HStack{
                    Text("To-Do List")
                        .fontWeight(.semibold)
                        .font(.custom("Caprasimo-Regular", size: 40 ))
                    
                    Spacer()
                    
                    Button(action: {
                        self.showNewTask = true
                    }){
                        Text("+")
                            .font(.system(size:40))
                            .foregroundColor(.blue)
                    }
                }
                .padding()
                Spacer()
                
                List {
                    ForEach(toDoItems){ toDoItem in
                        if toDoItem.isImportant == true {
                            Text("📌 " + (toDoItem.title ?? "No title"))
                        }
                        else {
                            Text(toDoItem.title ?? "No title")
                        }
                    }
                    //.onDelete(perform: deleteTask)
                }
                .cornerRadius(15)
                .padding()
                .listStyle(.plain)
                .listRowBackground(Color("AccentColor2"))
                .animation(.easeOut, value: showNewTask)
            }
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
