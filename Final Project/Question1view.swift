//
//  Question1view.swift
//  Final Project
//
//  Created by Yoselin Castillo on 7/19/23.
//

import SwiftUI

struct Question1view: View {
    
    //@EnvironmentObject var a: counter
    
    var body: some View {
        NavigationStack{
            ZStack(){
                
                Color("AccentColor")
                    .ignoresSafeArea()
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("AccentColor1").opacity(0.90))
                    .frame(width: 350, height: 450)
                   
                    .padding()
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("AccentColor3").opacity(0.15))
                    .frame(width: 380, height: 550)
                    .padding(.horizontal)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("AccentColor1").opacity(0.50))
                    .frame(width: 380, height: 650)
                
            VStack(spacing: 20){
                Text("Q1: How effectively do you study? Do you find yourself struggling to retain information?")
                    //.font(.title2)
                    .font(.custom("Caprasimo-Regular", size: 25 ))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("AccentColor5"))
                    .multilineTextAlignment(.center)
                
                Button("a. I study well and/or rarely struggle with retaining information"){
                    ContentView.counter3 += 1
                    print(ContentView.counter3) //check to see if counter works
                }
                .padding(.top, 20.0)
                .buttonStyle(.bordered)
                .tint(Color("AccentColor2"))
                .foregroundColor(Color("AccentColor5"))
                
                
                
                Button("b. Sort of well and/or I struggle to retain information"){
                    ContentView.counter2 += 1
                    print(ContentView.counter2)
                }
                .padding(.top, 1.0)
                .buttonStyle(.bordered)
                .tint(Color("AccentColor2"))
                .foregroundColor(Color("AccentColor5"))
                
                Button("c. I don’t study at all/find it bothersome to study"){
                    ContentView.counter1 += 1
                    print(ContentView.counter1)
                }
                .padding(.top, 1.0)
                .buttonStyle(.bordered)
                .tint(Color("AccentColor2"))
                .foregroundColor(Color("AccentColor5"))
                
            
                NavigationLink(destination: Question2view()) {
                    Text("Next Question")
                        
                    }
                .foregroundColor(Color("AccentColor5"))
                //.padding(.top, 40.0)
                .frame(width: 130, height: 40)
                .background(Capsule().foregroundColor(Color("AccentColor2")).opacity(0.35))
                
            }
            .padding(.horizontal, 45.0)
         }
    }
            
    }
}

struct Question1view_Previews: PreviewProvider {
    static var previews: some View {
        Question1view()
    }
}
