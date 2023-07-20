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
                VStack(spacing: 20) {
                   Text("Q3. Do you study well in a group or by yourself?")
                    
                    Button("a. In a group"){
                        ContentView.counter3 += 1
                        print(ContentView.counter3)
                    }
                    .padding(.top, 20.0)
                    .foregroundColor(.black)
                    
                    Button("b. By myself or with one/two partners"){
                        ContentView.counter2 += 1
                        print(ContentView.counter2)
                    }
                    .padding()
                    .foregroundColor(.black)
                    
                    Button("c. In a group Both are fine"){
                        ContentView.counter1 += 1
                        print(ContentView.counter1)
                    }
                    .padding()
                    .foregroundColor(.black)
                    
                    NavigationLink(destination: Question4view()){
                        Text("Next Question")
                    }

                    
                    
                    
                    
                    
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
