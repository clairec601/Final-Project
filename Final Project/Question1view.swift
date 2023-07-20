//
//  Question1view.swift
//  Final Project
//
//  Created by Yoselin Castillo on 7/19/23.
//

import SwiftUI

struct Question1view: View {
    @EnvironmentObject var a: counter
    
    var body: some View {
        ZStack(){
            VStack(){
                Text("Q1: How often do you get distracted while studying?")
                    .fontWeight(.semibold)
                
                Button("a. Not that often"){
                    self.a.counter1 += 1
                    print(self.a.counter1) //check to see if counter works
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
                    self.a.counter3 += 1
                    print(self.a.counter3)
                }
                .padding(.top, 1.0)
                .foregroundColor(.black)
                
                
            }
        }
    }
}

struct Question1view_Previews: PreviewProvider {
    static var previews: some View {
        Question1view()
            .environmentObject(counter())
    }
}
