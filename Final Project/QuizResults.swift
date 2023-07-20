//
//  QuizResults.swift
//  Final Project
//
//  Created by Claire Chang on 7/20/23.
//

import SwiftUI

struct QuizResults: View {
    //@EnvironmentObject var a: counter
    
    var body: some View {
        Text("RESULTS:")
        
        if (ContentView.counter1 >= 3){ //depends how many questions there are
            Text("The BEST study method for you is the Pomodoro method")
        }
        
        if (ContentView.counter2 >= 3){
            Text("The BEST study method for you is the Space Repetition method")
        }
        
        if (ContentView.counter3 >= 3){
            Text("The BEST study method for you is the Feynman Technique")
        }
    }
}

struct QuizResults_Previews: PreviewProvider {
    static var previews: some View {
        QuizResults()
            //.environmentObject(counter())
    }
}
