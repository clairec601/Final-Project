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
                VStack(spacing: 20) {
                    Spacer()
                    Text("Q4.  How often do you study before an exam/test?")
                    Spacer()
                    Button("a. A few weeks/a week before"){
                        ContentView.counter3 += 1
                        print(ContentView.counter3)
                        }
                    .foregroundColor(.black)
                    
                    Button("b.  A couple days before"){
                        ContentView.counter2 += 1
                        print(ContentView.counter2)
                    }
                    .foregroundColor(.black)
                    
                    Button("c. A night before an exam/test"){
                        ContentView.counter1 += 1
                        print(ContentView.counter1)
                    }
                    .foregroundColor(.black)
                    
                    Spacer()
                    
                    NavigationLink(destination: Question5view()) {
                        Text("Next Question")
                            .foregroundColor(Color.black)
                    }
                    Spacer()
                    
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
