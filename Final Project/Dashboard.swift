//
//  Dashboard.swift
//  Final Project
//
//  Created by Claire Chang on 7/20/23.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                Text("DASHBOARD")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
                    .frame(height: 40)
                
                NavigationLink(destination: ToDoContentView()){
                    Text("Set up a to-do list!")
                }
                .foregroundColor(Color("AccentColor5"))
                
                //Will add timer code here once I'm done
//                NavigationLink(destination: Timer()){
//                    Text("Use our work timer!")
//                }
//                .foregroundColor(Color("AccentColor5"))
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
