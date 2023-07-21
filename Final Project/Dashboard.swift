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
            ZStack(){
                
                Color("AccentColor")
                    .ignoresSafeArea()
                
                
                Rectangle()
                    .ignoresSafeArea()
                    .frame(width: 500, height: 200)
                    .padding(.bottom, 700.0)
                    .foregroundColor(Color("AccentColor4"))
                
                RoundedRectangle(cornerRadius: 25)
                    
                    .frame(width: 360, height: 600)
                    .foregroundColor(Color("AccentColor3").opacity(0.35))
                    .padding(.top, 150.0)
                
                RoundedRectangle(cornerRadius: 25)
                    
                    .frame(width: 330, height: 500)
                    .foregroundColor(Color("AccentColor3").opacity(0.20))
                    .padding(.top, 150.0)
                
                VStack(alignment: .center, spacing: 20){
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
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50.0)
                        
                        .background(Rectangle().foregroundColor(Color("AccentColor3")))
                    Spacer()
                    NavigationLink(destination: ToDoContentView()){
                            Text("Set up a to-do list!")
                        }
                        .foregroundColor(Color("AccentColor5"))
                        .frame(width: 300, height: 40)
                        .background(Capsule().foregroundColor(Color("AccentColor2")).opacity(0.35))
                        
                       
                    NavigationLink(destination: TimerContentView()){
                            Text("Use our work timer!")
                        }
                        .foregroundColor(Color("AccentColor5"))
                        .foregroundColor(Color("AccentColor5"))
                        .frame(width: 300, height: 40)
                        .background(Capsule().foregroundColor(Color("AccentColor2")).opacity(0.35))
                        .padding()
                    
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
                
                
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
