//
//  Question2view.swift
//  Final Project
//
//  Created by Yoselin Castillo on 7/20/23.
//

import SwiftUI


struct Question2view: View {
    
    //@EnvironmentObject var a: counter
    
    
    var body: some View {
        NavigationStack {
            ZStack(){
                VStack(spacing: 20){
                    Text("Q2: How often to you get distracted while studying?")
                        .fontWeight(.semibold)
                    
                    Button("a. Not that often"){
                        ContentView.counter3 += 1
                        print(ContentView.counter3) //check to see if counter works
                    }
                    .padding(.top, 20.0)
                    .foregroundColor(Color("AccentColor5"))
                    
                    Button("b. Sometimes, but it's manageable"){
                        ContentView.counter2 += 1
                        print(ContentView.counter2)
                    }
                    .padding(.top, 1.0)
                    .foregroundColor(Color("AccentColor5"))
                    
                    Button("c. I always get distracted"){
                        ContentView.counter1 += 1
                        print(ContentView.counter1)
                    }
                    .padding(.top, 1.0)
                    .foregroundColor(Color("AccentColor5"))
                    
                    NavigationLink(destination: Question3view()) {
                        Text("Next Question")
                            .foregroundColor(.blue)
                            .padding(.top, 30.0)
                        
                    }
                    
                    
                    
                }
                .padding(.horizontal, 45.0)
            }
        }
    }
}

struct Question2view_Previews: PreviewProvider {
    static var previews: some View {
        Question2view()
           // .environmentObject(counter())
    }
}
