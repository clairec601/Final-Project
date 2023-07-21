//
//  Question5view.swift
//  Final Project
//
//  Created by Yoselin Castillo on 7/20/23.
//

import SwiftUI


struct Question5view: View {
    
    //@EnvironmentObject var a: counter
    
    var body: some View {
        NavigationStack {
            ZStack {
                
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
                
                VStack(spacing: 20) {
                    
                    Text("Q5.  What is the main thing you wish to improve about your study habits?")
                        //.font(.title)
                        .font(.custom("Caprasimo-Regular", size: 25 ))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("AccentColor5"))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 30.0)
                        
                    Button("a. Studying more effectively"){
                        ContentView.counter3 += 1
                        print(ContentView.counter3)
                        }
                    .padding(.top, 1.0)
                    .buttonStyle(.bordered)
                    .tint(Color("AccentColor2"))
                    .foregroundColor(Color("AccentColor5"))
                    
                    Button("b. Retaining information long term"){
                        ContentView.counter2 += 1
                        print(ContentView.counter2)
                    }
                    .padding(.top, 1.0)
                    .buttonStyle(.bordered)
                    .tint(Color("AccentColor2"))
                    .foregroundColor(Color("AccentColor5"))
                    
                    Button("c. Studying more frequently/reducing distractions"){
                        ContentView.counter1 += 1
                        print(ContentView.counter1)
                    }
                    .padding(.top, 1.0)
                    .buttonStyle(.bordered)
                    .tint(Color("AccentColor2"))
                    .foregroundColor(Color("AccentColor5"))
                    
                   
                    
                    NavigationLink(destination: QuizResults()) {
                        Text("Results")
                            
                    }
                    .foregroundColor(Color("AccentColor4"))
                    //.padding(.top, 40.0)
                    .frame(width: 100, height: 40)
                    .background(Capsule().foregroundColor(Color("AccentColor2")).opacity(0.35))
                    .fontWeight(.semibold)
                    
                    
                }
                .padding(.horizontal, 45.0)
            }
        }
    }
}

struct Question5view_Previews: PreviewProvider {
    static var previews: some View {
        Question5view()
           // .environmentObject(counter())
    }
}
