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
                
                
                NavigationLink(destination: TimerContentView()){
                    Text("Use our work timer!")
                }
                .foregroundColor(Color("AccentColor5"))
                .padding()
                
               
                Text("Check out other study methods:")
                    .fontWeight(.semibold)
                .foregroundColor(Color("AccentColor5"))
                .padding(.top, 3.0)
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
