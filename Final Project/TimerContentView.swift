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
        VStack {
            
            Text("SET YOUR WORK TIMER!")
                .multilineTextAlignment(.center)
                .font(.system(size:20))
                .fontWeight(.semibold)
                .padding(.vertical, 3.0)
            Text("You can also use this timer for breaks :)")
                .font(.system(size:15))
                .padding(.bottom)
            
            Text("\(vm.time)")
                .font(.system(size:40))
                .fontWeight(.semibold)
            
                .alert("Timer done!", isPresented: $vm.showingAlert){
                    Button("Continue", role: .cancel){
                    }
                }
            
            Slider(value: $vm.minutes, in: 1...60, step: 1)
                .padding()
                .disabled(vm.isRunning)
                .animation(.easeInOut, value: vm.minutes)
            
            

            HStack(spacing: 50){
                Button("Start"){
                    vm.start(minutes: vm.minutes)
                }
                .disabled(vm.isRunning)
                .foregroundColor(.blue)
                
                Button("Reset", action: vm.reset)
                .foregroundColor(.red)
            }
            
        }
        
        .onReceive(timer){_ in
            vm.updateCountdown()
            if (vm.time == "0:01"){
                    self.playSound()
            }
        }
        .padding()
    }
   
    func playSound(){
        //getting the resource path
        let resourcePath = Bundle.main.url(forResource: "Movie on 7-20-23 at 1.40 PM (online-audio-converter.com)", withExtension: "mp3")
    
        do{
            //initializing audio player with the resource path
            audioPlayer = try AVAudioPlayer(contentsOf: resourcePath!)
    
            //play the audio
         //   audioPlayer?.play()
    
            //stop the audio
            // audioPlayer?.stop()
    
        }
        catch{
          //error handling
            print(error.localizedDescription)
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

