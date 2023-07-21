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
        NavigationStack{
            VStack{
                Text("RESULTS:")
                    .font(.title)
                    .fontWeight(.bold)
                
                if (ContentView.counter1 >= 3){ //depends how many questions there are
                    VStack{
                        Text("The BEST study method for you is the Pomodoro Method!")
                            .padding(.top)
                            .multilineTextAlignment(.center)
                            .fontWeight(.semibold)
                            .font(.system(size: 19))

                        Text("Invented by writer Francisco Cirillo, the Pomodoro Method is one of the most famous study methods out there today!")
                            .padding()
                        List {
                                Text("1. Choose a task to complete")
                                Text("2. Work on that task for about 25 minutes")
                                Text("3. Take a 5 minute break and get back to work")
                                Text("4. Once four 25 min. sessions have passed, take a longer break of about 15-30 min")
                                Text("5. Repeat!")

                            }
                        Text("You can also use this method with a friend! Having another person with you to improve motivation is a productivity technique known as body doubling.")
                            .padding()


                    }
                }
                
                if (ContentView.counter2 >= 3){
                    VStack{
                        Text("The BEST study method for you is Space Repetition!")
                            .padding(.top)
                            .multilineTextAlignment(.center)
                            .fontWeight(.semibold)
                            .font(.system(size: 19))

                        Text("Space Repetition involves actively recalling information in spaced intervals.")
                            .padding()
                        
                        List {
                                Text("1. Choose a day to work or study")
                                Text("2. Return to that topic after some time has passed")
                                Text("3. Keep increasing those intervals of time between sessions")
                            }
                        
                        Text("This method is especially useful if you want to really internalize something you do, rather than forgetting it all at once!")
                            .padding()
                                     
                   }
                
                }
                
                if (ContentView.counter3 >= 3){
                    VStack{
                        Text("The BEST study method for you is the Feynman Technique!")
                            .padding(.top)
                            .multilineTextAlignment(.center)
                            .fontWeight(.semibold)
                            .font(.system(size: 19))

                        Text("The Feynman Technique is a way of learning and taking in new information, created by Nobel Prize winning physicist Richard Feynman.")
                            .padding()
                        
                        List {
                                Text("1. Write down what you wish to learn/study on a piece of paper")
                                Text("2. Teach it to yourself - or ideally teach another person about your topic")
                                Text("3. Return to your studying and fill in any gaps")
                                Text("4. Simplify your explanations, as if you were explaining your topic to a child")

                            }
                        
                        Text("This method is especially useful if you want to develop a deep understanding and internalization of your information!")
                            .padding()
                                     
                   }
                }
                
                NavigationLink(destination: Dashboard()){
                    Text("Go to Dashboard")
                        .padding()
                }
                .foregroundColor(.blue)
            }
          
        }
    }
}

struct QuizResults_Previews: PreviewProvider {
    static var previews: some View {
        QuizResults()
            //.environmentObject(counter())
    }
}
