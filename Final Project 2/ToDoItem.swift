//
//  ToDoItem.swift
//  Final Project
//
//  Created by Claire Chang on 7/20/23.
//

import Foundation

class ToDoItem: Identifiable {
    var id = UUID()
    var title = ""
    var isImportant = false
    
    init (title: String, isImportant: Bool = false){
        self.title = title
        self.isImportant = isImportant
    }
}
 
