//
//  TimerData.swift
//  TimerSwiftUI
//
//  Created by Hakan Sezer on 3.01.2024.
//

import Foundation

class TimerData: ObservableObject {
    @Published var counter: Double = 0
    var timer = Timer()
    
    func start() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { _ in
            self.counter -= 1
        })
    }
    func reset() {
        self.counter = 0
        self.timer.invalidate()
    }
}
