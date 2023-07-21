//
//  ContentView-Model.swift
//  Final Project
//
//  Created by Claire Chang on 7/20/23.
//

import Foundation

extension TimerContentView {
    final class ViewModel: ObservableObject{
        @Published var isRunning = false
        @Published var showingAlert = false
        @Published var time: String = "0:00"
        @Published var minutes: Float = 0.0 {
            didSet{
                self.time = "\(Int(minutes)):00"
            }
        }
        private var initialTime = 0
        private var endDate = Date()
        
        func start(minutes: Float){
            self.initialTime = Int(minutes)
            self.endDate = Date()
            self.isRunning = true
            self.endDate = Calendar.current.date(byAdding: .minute, value: Int(minutes), to: endDate)!
        }
        
        func reset() {
            self.minutes = Float(initialTime)
            self.isRunning = false
            self.time = "\(Int(minutes)):00"

        }
        
        func updateCountdown() {
            guard isRunning else { return }
            
            let now = Date()
            let diff = endDate.timeIntervalSince1970 - now.timeIntervalSince1970
            
            if diff <= 0 {
                self.isRunning = false
                self.time = "0:00"
                self.showingAlert = true
                return
            }
            
            let date = Date(timeIntervalSince1970: diff)
            let calendar = Calendar.current
            let minutes = calendar.component(.minute, from: date)
            let seconds = calendar.component(.second, from: date)
            
            self.minutes = Float(minutes)
            self.time = String(format: "%d:%02d", minutes, seconds)
        
        }
    }
}
