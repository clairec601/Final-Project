//
//  Question3view.swift
//  Final Project
//
//  Created by Yoselin Castillo on 7/20/23.
//

import SwiftUI

struct Question3view: View {
    
    //@EnvironmentObject var a: counter
    
    var body: some View {
        NavigationStack {
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
                
                
                VStack(spacing: 20) {
                   Text("Q3. Do you study well in a group or by yourself?")
                        //.font(.title2)
                        .font(.custom("Caprasimo-Regular", size: 25 ))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("AccentColor5"))
                        .multilineTextAlignment(.center)
                        
                    Button("a. In a group"){
                        ContentView.counter3 += 1
                        print(ContentView.counter3)
                    }
                    .padding(.top, 20.0)
                    .buttonStyle(.bordered)
                    .tint(Color("AccentColor2"))
                    .foregroundColor(Color("AccentColor5"))
                    
                    Button("b. By myself or with one/two partners"){
                        ContentView.counter2 += 1
                        print(ContentView.counter2)
                    }
                    .padding(.top, 1.0)
                    .buttonStyle(.bordered)
                    .tint(Color("AccentColor2"))
                    .foregroundColor(Color("AccentColor5"))
                    
                    Button("c. Both are fine"){
                        ContentView.counter1 += 1
                        print(ContentView.counter1)
                    }
                    .padding(.top, 1.0)
                    .buttonStyle(.bordered)
                    .tint(Color("AccentColor2"))
                    .foregroundColor(Color("AccentColor5"))
                    
                   
                    NavigationLink(destination: Question4view()){
                        Text("Next Question")
                    }
                    .foregroundColor(Color("AccentColor4"))
                    //.padding(.top, 40.0)
                    .frame(width: 120, height: 40)
                    .background(Capsule().foregroundColor(Color("AccentColor2")).opacity(0.35))
                    
                    
                    
                    
                    
                    
                }
                .padding(.horizontal, 45.0)
                
            }

        }
    }
}

struct Question3view_Previews: PreviewProvider {
    static var previews: some View {
        Question3view()
            //.environmentObject(counter())
    }
}
