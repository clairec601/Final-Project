//
//  Question4view.swift
//  Final Project
//
//  Created by Yoselin Castillo on 7/20/23.
//

import SwiftUI

struct Question4view: View {
    
   // @EnvironmentObject var a: counter

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
                   
                    Text("Q4.  How often do you study before an exam/test?")
                        //.font(.title)
                        .font(.custom("Caprasimo-Regular", size: 25 ))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("AccentColor5"))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 50.0)
                 
                    
                    Button("a. A few weeks/a week before"){
                        ContentView.counter3 += 1
                        print(ContentView.counter3)
                        }
                    .padding(.top, 1.0)
                    .buttonStyle(.bordered)
                    .tint(Color("AccentColor2"))
                    .foregroundColor(Color("AccentColor5"))
                    
                    Button("b.  A couple days before"){
                        ContentView.counter2 += 1
                        print(ContentView.counter2)
                    }
                    .padding(.top, 1.0)
                    .buttonStyle(.bordered)
                    .tint(Color("AccentColor2"))
                    .foregroundColor(Color("AccentColor5"))
                    
                    Button("c. A night before an exam/test"){
                        ContentView.counter1 += 1
                        print(ContentView.counter1)
                    }
                    .padding(.top, 1.0)
                    .buttonStyle(.bordered)
                    .tint(Color("AccentColor2"))
                    .foregroundColor(Color("AccentColor5"))
                    
                   
                    
                    NavigationLink(destination: Question5view()) {
                        Text("Next Question")
                            
                    }
                    .foregroundColor(Color("AccentColor4"))
                    //.padding(.top, 40.0)
                    .frame(width: 130, height: 40)
                    .background(Capsule().foregroundColor(Color("AccentColor2")).opacity(0.35))
                    
                }
                .padding(.horizontal, 45.0)
            }
        }

    }
}

struct Question4view_Previews: PreviewProvider {
    static var previews: some View {
        Question4view()
            //.environmentObject(counter())
    }
}
