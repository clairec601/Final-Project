//
//  TimerContentView.swift
//  Final Project
//
//  Created by Claire Chang on 7/20/23.
//
import SwiftUI
import AVFoundation

var audioPlayer : AVAudioPlayer?

struct TimerContentView: View {
    @StateObject private var vm = ViewModel()
    private let timer = Timer.publish(every: 1, on: .current, in: .common).autoconnect()
    private let width: Double = 250
    
    
    var body: some View {
        ZStack(){
            Color("AccentColor")
                .ignoresSafeArea()
            Circle()
                .scale(1.7)
                .foregroundColor(Color(red: 255/255, green: 201/255, blue: 201/255).opacity(0.50))
            Circle()
                .scale(1.35)
                .foregroundColor(Color("AccentColor2").opacity(0.15))
        
            Circle()
                .scale(1.00)
                .foregroundColor(Color("AccentColor1").opacity(0.80))
            
            VStack {
                
                Text("SET YOUR WORK TIMER!")
                    .multilineTextAlignment(.center)
                    //.font(.system(size:25))
                    .fontWeight(.semibold)
                    .font(.custom("Caprasimo-Regular", size: 30 ))
                    .foregroundColor(Color("AccentColor5"))
                    .padding(.top, 20.0)
                    .padding(.bottom, 10.0)
                Text("You can also use this timer for breaks :)")
                    .font(.system(size:15))
                    .padding(.bottom)
                    .foregroundColor(Color("AccentColor4"))
                
                Text("\(vm.time)")
                    .font(.system(size:40))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("AccentColor5"))
                
                    .alert("Timer done!", isPresented: $vm.showingAlert){
                        Button("Continue", role: .cancel){
                        }
                    }
                
                Slider(value: $vm.minutes, in: 1...60, step: 1)
                    .padding()
                    .disabled(vm.isRunning)
                    .animation(.easeInOut, value: vm.minutes)
                    .tint(Color("AccentColor5"))
                
                
                
                HStack(spacing: 50){
                    Button("Start"){
                        vm.start(minutes: vm.minutes)
                    }
                    .disabled(vm.isRunning)
                    .foregroundColor(.blue)
                    .padding(.vertical, 20.0)
                    
                    Button("Reset", action: vm.reset)
                        .foregroundColor(.red)
                        .padding(.vertical, 20.0)
                }
                
                
            }
           
            .onReceive(timer){_ in
                vm.updateCountdown()
                if (vm.time == "0:55"){
                    self.playSound()
                }
            }
            .padding()
        }
    }
   
    func playSound() {
        guard let resourcePath = Bundle.main.url(forResource: "Movie on 7-20-23 at 1.40 PM (online-audio-converter.com)", withExtension: "mp3") else {
            print("Error: Audio file not found.")
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: resourcePath)
            audioPlayer?.play()
        } catch {
            print("Error playing audio: \(error.localizedDescription)")
        }
    }
    
}


//
//  ContentView.swift
//  MyAudioPlayerApp
//
//  Created by test on 4/18/23.
//

struct TimerContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimerContentView()
    }
}

