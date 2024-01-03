//
//  ContentView.swift
//  TestTimer
//
//  Created by Hakan Sezer on 3.01.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    private let width : Double = 250
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Circle()
                        .stroke(lineWidth: 20)
                        .opacity(0.3)
                    Circle()
                        .trim(from: 0.00, to: CGFloat(1 - (vm.minutes / 10)))
                        .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                        .rotationEffect(.degrees(90))
                    Text("\(vm.time)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                }
                .frame(maxWidth: 500)
                
                
            }
            .padding()
        }
        VStack {
            
            
            Text("\(vm.time)")
                .font(.system(size: 70, weight: .medium, design: .rounded))
                .padding()
                .frame(width: width)
                .background(.thinMaterial)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 4))
                .alert("Timer done!", isPresented: $vm.showingAlert) {
                    Button("Continue", role: .cancel) {
                        //Code
                    }
                }
            Slider(value: $vm.minutes, in: 1...10, step: 1)
                .padding()
                .frame(width: width)
                .disabled(vm.isActive)
                .animation(.easeInOut, value: vm.minutes)
            
            HStack(spacing: 50) {
                Button("Start") {
                    vm.start(minutes: vm.minutes)
                }
                .disabled(vm.isActive)
                
                Button("Reset", action: vm.reset)
                    .tint(.red)
                
            }
            .frame(width: width)
            
        }
        .onReceive(timer) { _ in
            vm.updateCountdown()
            
        }
    }
}

#Preview {
    ContentView()
}
