//
//  ContentView.swift
//  Final Project
//
//  Created by Claire Chang on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack(){
                
                Color("AccentColor")
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(Color(red: 255/255, green: 201/255, blue: 201/255).opacity(0.50))
                Circle()
                    .scale(1.35)
                    .foregroundColor(Color(red: 255/255, green: 201/255, blue: 201/255).opacity(0.50))
            
                Circle()
                    .scale(1.00)
                    .foregroundColor(Color("AccentColor1").opacity(0.80))
                
                VStack(spacing: 30) {
                Text("Welcome to Productivi-Me")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color("AccentColor5"))
                    .multilineTextAlignment(.center)
                    
                    
                    NavigationLink(destination: Question1view()) {
                        Text("Start Quiz -->")
                            .foregroundColor(Color.white)
                            .frame(width: 150, height: 50)
                            .background(Capsule().fill(Color("AccentColor2").opacity(0.35)))
                    }
                    Text("See which study method suits you the best!")
                        .fontWeight(.semibold)
                        .foregroundColor(Color("AccentColor5"))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    
                
                
            }
                .padding()
                
                
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
