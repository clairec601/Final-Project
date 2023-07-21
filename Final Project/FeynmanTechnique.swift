//
//  FeynmanTechnique.swift
//  Final Project
//
//  Created by Claire Chang on 7/21/23.
//

import SwiftUI

struct FeynmanTechnique: View {
    var body: some View {
        
        ZStack{
            Color.accentColor
                .ignoresSafeArea()
            
            VStack{
                Text("FEYNMAN TECHNIQUE")
                    .padding(.top)
                    .multilineTextAlignment(.center)
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                
                Text("The **Feynman Technique** is a way of learning and taking in new information, created by Nobel Prize winning physicist Richard Feynman.")
                    .padding()
                    .foregroundColor(Color("AccentColor5"))
                
                List{
                    Text("1. Write down what you wish to learn/study on a piece of paper")
                    Text("2. Teach it to yourself - or ideally teach another person about your topic")
                    Text("3. Return to your studying and fill in any gaps")
                    Text("4. Simplify your explanations, as if you were explaining your topic to a child")
                }
                .frame(maxHeight: 340)
                .background(Color("AccentColor1"))
                .scrollContentBackground(.hidden)
                
                
                ScrollView{
                    Text("This method is especially useful if you want to develop a deep understanding and internalization of your information!")
                        .padding()
                        .foregroundColor(Color("AccentColor5"))
                        
                    Text("________________________________________")
                    Text("Explore the Feynman Technique:")
                        .padding()
                        .fontWeight(.semibold)
                    
                    Link("➡️ todoist.com/feynman-technique",
                          destination: URL(string: "https://todoist.com/inspiration/feynman-technique")!)
                    .foregroundColor(.blue)
                    
                    Link("➡️ colorado.edu/the-feyman-technique",
                          destination: URL(string: "https://www.colorado.edu/artssciences-advising/resource-library/life-skills/the-feynman-technique-in-academic-coaching")!)
                    .foregroundColor(.blue)
                    .padding(.top, 1.0)
                    
                    
                }
                
                
            }
        }
    }
}

struct FeynmanTechnique_Previews: PreviewProvider {
    static var previews: some View {
        FeynmanTechnique()
    }
}
