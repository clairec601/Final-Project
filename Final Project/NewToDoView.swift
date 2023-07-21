//
//  NewToDoView.swift
//  Final Project
//
//  Created by Claire Chang on 7/20/23.
//

import SwiftUI

struct NewToDoView: View {
    @Environment(\.managedObjectContext) var context
    @State var title: String
    @State var isImportant: Bool
    @Binding var showNewTask : Bool
    
    var body: some View {
        VStack{
            Text("Task Title:")
                .fontWeight(.semibold)
                .font(.system(size: 20))
            
            HStack{
                TextField("Enter task description...", text: $title).padding(12.0)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding()
                
                Button(action:{
                    self.showNewTask = false
                    self.addTask(title: self.title, isImportant: self.isImportant)
                }){
                    Text("Add")
                        .foregroundColor(.blue)
                }
                .padding(.trailing, 20.0)
                .font(.system(size: 20))
                
            }
            Toggle(isOn: $isImportant) {
                Text("Is this task important?")
                    .padding(.leading, 15.0)
            }
            .padding(.trailing, 15.0)
            
           
        }
    }
    private func addTask(title: String, isImportant: Bool = false) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.isImportant = isImportant
                
        do {
                    try context.save()
        } catch {
                    print(error)
        }
        }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, showNewTask : .constant(true))
    }
}
 
