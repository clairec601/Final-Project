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
                Text("THE POMODORO METHOD")
                    .padding(.top)
                    .multilineTextAlignment(.center)
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                
                Text("Invented by writer Francisco Cirillo, the **Pomodoro Method** is one of the most famous study methods out there today!")
                
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
                        
                    Text("Read more about the Pomodoro Method and why it works here:")
                        .padding()
                        .fontWeight(.semibold)
                    
                    Link("➡️ forbes.com/the-pomodoro-technique",
                          destination: URL(string: "https://www.forbes.com/sites/bryancollinseurope/2020/03/03/the-pomodoro-technique/?sh=52a84ffb3985")!)
                    .foregroundColor(.blue)
                    
                    Text("Learn about body doubling and why it works:")
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
