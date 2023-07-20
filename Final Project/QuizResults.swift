//
//  QuizResults.swift
//  Final Project
//
//  Created by Claire Chang on 7/20/23.
//

import SwiftUI

struct QuizResults: View {
    @EnvironmentObject var a: counter
    
    var body: some View {
        Text("RESULTS:")
        
        if (self.a.counter1 >= 3){ //depends how many questions there are
            Text("The BEST study method for you is the Pomodora method")
        }
        
        if (self.a.counter2 >= 3){
            Text("The BEST study method for you is the Space Repetition method")
        }
        
        if (self.a.counter3 >= 3){
            Text("The BEST study method for you is the Feynman Technique")
        }
    }
}

struct QuizResults_Previews: PreviewProvider {
    static var previews: some View {
        QuizResults()
            .environmentObject(counter())
    }
}
