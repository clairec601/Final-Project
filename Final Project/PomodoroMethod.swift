//
//  PomodoroMethod.swift
//  Final Project
//
//  Created by Claire Chang on 7/21/23.
//

import SwiftUI

struct PomodoroMethod: View {
    var body: some View {
        
        ZStack{
            
            Color.accentColor
                .ignoresSafeArea()
            
            VStack{
                Text("POMODORO METHOD")
                    .padding(.top, 25.0)
                    .multilineTextAlignment(.center)
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                
                Text("Invented by writer Francisco Cirillo, the **Pomodoro Method** is one of the most famous study methods out there today!")
                    .foregroundColor(Color("AccentColor5"))
                    .padding()
                
                List {
                    Text("1. Choose a task to complete")
                    Text("2. Work on that task for about 25 minutes")
                    Text("3. Take a 5 minute break and get back to work")
                    Text("4. Once four 25 min. sessions have passed, take a longer break of about 15-30 min")
                    Text("5. Repeat!")
                }
                .frame(maxHeight: 300)
                .background(Color("AccentColor1"))
                .scrollContentBackground(.hidden)
                
                ScrollView{
                    Text("You can also use this method with a friend! Having another person with you to improve motivation is a productivity technique known as **body doubling**.")
                        .padding()
                        .foregroundColor(Color("AccentColor5"))
                    Text("_______________________________________")
                    Text("Explore the Pomodoro Method:")
                        .padding()
                        .fontWeight(.semibold)
                    
                    Link("➡️ forbes.com/the-pomodoro-technique",
                          destination: URL(string: "https://www.forbes.com/sites/bryancollinseurope/2020/03/03/the-pomodoro-technique/?sh=52a84ffb3985")!)
                    .foregroundColor(.blue)
                    
                    Link("➡️ geekbot.com/best-pomodoro-apps",
                          destination: URL(string: "https://geekbot.com/blog/best-pomodoro-apps/#forest")!)
                    .foregroundColor(.blue)
                    .padding(.top, 1.0)
                    
                    Text("Learn about body doubling and its benefits:")
                        .padding()
                        .fontWeight(.semibold)
                    
                    
                    
                    Link("➡️ cnn.com/body-doubling-productivity",
                          destination: URL(string: "https://www.cnn.com/2023/02/13/health/adhd-body-doubling-productivity-benefits-wellness/index.html")!)
                    .foregroundColor(.blue)
                    
                    
                }
                
            }
        }
    }
}

struct PomodoroMethod_Previews: PreviewProvider {
    static var previews: some View {
        PomodoroMethod()
    }
}
