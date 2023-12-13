//
//  BlueTwoView.swift
//  SwiftUI TabView
//
//  Created by Hakan Sezer on 13.12.2023.
//

import SwiftUI

struct BlueTwoView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200,height: 200)
                .foregroundColor(.blue)
            Text("\(2)")
                .foregroundColor(.white)
                .font(.system(size: 70,weight: .bold))
        }
    }
}

#Preview {
    BlueTwoView()
}
