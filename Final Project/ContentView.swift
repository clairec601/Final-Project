//
//  ContentView.swift
//  Final Project
//
//  Created by Claire Chang on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to Productivi-Me")
                .font(.title2)
                .fontWeight(.black)
                .foregroundColor(Color("AccentColor5"))
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
