//
//  SpaceRepetition.swift
//  Final Project
//
//  Created by Claire Chang on 7/21/23.
//

import SwiftUI

struct SpaceRepetition: View {
    var body: some View {
        
        ZStack{
            Color.accentColor
                .ignoresSafeArea()
            
            VStack{
                Text("SPACE REPETITION")
                    .padding(.top)
                    .multilineTextAlignment(.center)
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                
                Text("**Space Repetition** involves actively recalling information in spaced intervals.")
                    .padding()
                
                List {
                    Text("1. Choose a day to work or study")
                    Text("2. Return to that topic after some time has passed")
                    Text("3. Keep increasing those intervals of time between sessions")
                }
                .frame(maxHeight: 250)
                .background(Color("AccentColor1"))
                .scrollContentBackground(.hidden)
                
                ScrollView{
                    Text("This method is especially useful if you want to develop a deep understanding and internalization of your information!")
                        .padding()
                        
                    Text("Read more about Space Repetition and why it works here:")
                        .padding()
                        .fontWeight(.semibold)
                    
                    Link(" ➡️ e-student.org/spaced-repetition",
                          destination: URL(string: "https://e-student.org/spaced-repetition/")!)
                    .foregroundColor(.blue)
                    
                    Link("➡️ collegeinfogeek.com/spaced-repetition",
                          destination: URL(string: "https://collegeinfogeek.com/spaced-repetition-memory-technique/")!)
                    .foregroundColor(.blue)
                    .padding(.top, 1.0)
                }
                
            }
        }
    }
}

struct SpaceRepetition_Previews: PreviewProvider {
    static var previews: some View {
        SpaceRepetition()
    }
}
