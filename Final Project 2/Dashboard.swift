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
                    .fontWeight(.bold)
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
                
                VStack{
                    Text("Check out other study methods:")
                        .fontWeight(.semibold)
                        .foregroundColor(Color("AccentColor5"))
                        .padding([.top, .leading, .trailing])
                    
                    NavigationLink(destination: PomodoroMethod()){
                        Text(" ➡ Pomodoro Method")
                    }
                    .foregroundColor(Color("AccentColor5"))
                    .padding()
                    
                    NavigationLink(destination: FeynmanTechnique()){
                        Text(" ➡ Feynman Technique")
                    }
                    .foregroundColor(Color("AccentColor5"))
                    
                    
                    NavigationLink(destination: SpaceRepetition()){
                        Text(" ➡ Space Repetition")
                    }
                    .foregroundColor(Color("AccentColor5"))
                    .padding(.top, 10.0)
                    .padding(.bottom, 35.0)
                }
                .background(Rectangle() .foregroundColor(.accentColor))
                .cornerRadius(15)
                
                Text("*The way to get started is to quit talking and begin doing.* - Walt Disney")
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 30.0)
                    .padding(.horizontal, 80.0)
                    .fontWeight(.semibold)
                    .background(Rectangle() .foregroundColor(Color("AccentColor1")).frame(maxWidth: 300).cornerRadius(15))
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
