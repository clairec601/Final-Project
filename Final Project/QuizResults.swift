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
        
        if (self.a.counter1 >= 2){ //depends how many questions there are
            Text("The BEST study method for you is _____")
        }
        
        if (self.a.counter2 >= 2){
            Text("The BEST study method for you is _____")
        }
        
        if (self.a.counter3 >= 2){
            Text("The BEST study method for you is _____")
        }
    }
}

struct QuizResults_Previews: PreviewProvider {
    static var previews: some View {
        QuizResults()
            .environmentObject(counter())
    }
}
