//
//  Question2view.swift
//  Final Project
//
//  Created by Yoselin Castillo on 7/20/23.
//

import SwiftUI


struct Question2view: View {
    
    @EnvironmentObject var a: counter
    
    
    var body: some View {
        NavigationStack {
            ZStack(){
                VStack(spacing: 20){
                    Text("Q2: How often to you get distracted while studying?")
                    
                    Button("a. Not that often"){
                        self.a.counter3 += 1
                        print(self.a.counter3) //check to see if counter works
                    }
                    .padding(.top, 20.0)
                    .foregroundColor(.black)
                    
                    Button("b. Sometimes, but it's manageable"){
                        self.a.counter2 += 1
                        print(self.a.counter2)
                    }
                    .padding(.top, 1.0)
                    .foregroundColor(.black)
                    
                    Button("c. I always get distracted"){
                        self.a.counter1 += 1
                        print(self.a.counter1)
                    }
                    .padding(.top, 1.0)
                    .foregroundColor(.black)
                    
                    NavigationLink(destination: Question3view()) {
                        Text("Next Question")
                        
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
            .environmentObject(counter())
    }
}
