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
            VStack(spacing: 20){
                Text("Q1: How effectively do you study? Do you find yourself struggling to retain information?")
                    .fontWeight(.semibold)
                
                Button("a. I study well and/or rarely struggle with retaining information"){
                    ContentView.counter3 += 1
                    print(ContentView.counter3) //check to see if counter works
                }
                .padding(.top, 20.0)
                .foregroundColor(Color("AccentColor5"))
                
                
                
                Button("b. Sort of well and/or I struggle to retain information"){
                    ContentView.counter2 += 1
                    print(ContentView.counter2)
                }
                .padding(.top, 1.0)
                .foregroundColor(Color("AccentColor5"))
                
                Button("c. I don’t study at all /find it bothersome to study"){
                    ContentView.counter1 += 1
                    print(ContentView.counter1)
                }
                .padding(.top, 1.0)
                .foregroundColor(Color("AccentColor5"))
                
                NavigationLink(destination: Question2view()) {
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

struct Question1view_Previews: PreviewProvider {
    static var previews: some View {
        Question1view()
    }
}
