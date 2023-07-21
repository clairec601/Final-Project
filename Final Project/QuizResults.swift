//
//  QuizResults.swift
//  Final Project
//
//  Created by Claire Chang on 7/20/23.
//

import SwiftUI

struct QuizResults: View {
    //@EnvironmentObject var a: counter
    
    var body: some View {
        NavigationStack{
            ZStack(){
                Color("AccentColor")
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(Color(red: 255/255, green: 201/255, blue: 201/255).opacity(0.50))
                Circle()
                    .scale(1.35)
                    .foregroundColor(Color("AccentColor3").opacity(0.15))
            
                Circle()
                    .scale(1.00)
                    .foregroundColor(Color("AccentColor1").opacity(0.80))
                VStack{
                    Text("RESULTS:")
                        .font(.custom("Caprasimo-Regular", size: 35 ))
                        .foregroundColor(Color("AccentColor5"))
                    
                    if (ContentView.counter1 >= 3){ //depends how many questions there are
                        Text("The BEST study method for you is the Pomodoro method")
                            .foregroundColor(Color("AccentColor5"))
                            .font(.custom("LibreCaslonText-Regular", size: 15 ))
                            .multilineTextAlignment(.center)
                    }
                    
                    if (ContentView.counter2 >= 3){
                        Text("The BEST study method for you is the Space Repetition method")
                            .foregroundColor(Color("AccentColor5"))
                            .font(.custom("LibreCaslonText-Regular", size: 15 ))
                            .multilineTextAlignment(.center)
                    }
                    
                    if (ContentView.counter3 >= 3){
                        Text("The BEST study method for you is the Feynman Technique")
                            .foregroundColor(Color("AccentColor5"))
                            .font(.custom("LibreCaslonText-Regular", size: 15 ))
                            .multilineTextAlignment(.center)
                    }
                    
                    NavigationLink(destination: Dashboard()){
                        Text("Go to Dashboard")
                            .padding()
                    }
                    .foregroundColor(.blue)
                }
            }
          
        }
    }
}

struct QuizResults_Previews: PreviewProvider {
    static var previews: some View {
        QuizResults()
            //.environmentObject(counter())
    }
}
