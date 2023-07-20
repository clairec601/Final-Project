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
                VStack(spacing: 20) {
                    //Spacer()
                    Text("Q5.  What is the main thing you wish to improve about your study habits?")
                    //Spacer()
                        .fontWeight(.semibold)
                    Button("a. Studying more effectively"){
                        ContentView.counter3 += 1
                        print(ContentView.counter3)
                        }
                    .foregroundColor(Color("AccentColor5"))
                    
                    Button("b. Retaining information long term"){
                        ContentView.counter2 += 1
                        print(ContentView.counter2)
                    }
                    .foregroundColor(Color("AccentColor5"))
                    
                    Button("c. Studying more frequently/reducing distractions"){
                        ContentView.counter1 += 1
                        print(ContentView.counter1)
                    }
                    .foregroundColor(Color("AccentColor5"))
                    
                    //Spacer()
                    
                    NavigationLink(destination: QuizResults()) {
                        Text("Results")
                            .foregroundColor(Color.blue)
                            .padding(.top, 30.0)
                    }
                    //Spacer()
                    
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
