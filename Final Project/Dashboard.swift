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
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("AccentColor1").opacity(0.90))
                    .frame(width: 350, height: 450)
                   
                    .padding(.bottom)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("AccentColor3").opacity(0.15))
                    .frame(width: 380, height: 550)
                    .padding([.leading, .bottom, .trailing])
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("AccentColor1").opacity(0.50))
                    .frame(width: 380, height: 650)
                    .padding(.bottom)
                
                VStack{
                    
                    Text("DASHBOARD")
                    //.font(.title)
                        .font(.custom("Caprasimo-Regular", size: 30 ))
                    
                        .fontWeight(.bold)
                        .foregroundColor(Color("AccentColor5"))
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
                            .font(.custom("Caprasimo-Regular", size: 24 ))
                            .fontWeight(.semibold)
                            .foregroundColor(Color("AccentColor5"))
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
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
