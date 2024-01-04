//
//  ContentView.swift
//  TimerSwiftUI
//
//  Created by Hakan Sezer on 3.01.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var timerWatch = TimerData()
    @State private var isToggle: Bool = true
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(lineWidth: 20)
                    .opacity(0.3)
                Circle()
                    .trim(from: 0, to: CGFloat(1 - (timerWatch.counter / 600.0)))
                    .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                    .rotationEffect(.degrees(270))
                if isToggle {
                    let minutes = String(format: "%02d", Int(timerWatch.counter) / 60)
                    let seconds = String(format: "%02d", Int(timerWatch.counter) % 60)
                    let union = minutes + " : " + seconds
                    Text("\(union)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                
                
            }//: ZStack
            .frame(maxWidth: 500)
            
            Slider(value: $timerWatch.counter, in: 1...600, step: 1)
                .padding()
                .frame(width: 300)
            
            Button("Start") {
                timerWatch.start()
            }
            .padding()
            
            Button("Reset") {
                timerWatch.reset()
            }
            .tint(.red)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
