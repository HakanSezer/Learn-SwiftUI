//
//  RedOneView.swift
//  SwiftUI TabView
//
//  Created by Hakan Sezer on 13.12.2023.
//

import SwiftUI

struct RedOneView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200,height: 200)
                .foregroundColor(.red)
            Text("\(1)")
                .foregroundColor(.white)
                .font(.system(size: 70,weight: .bold))
        }
    }
}

#Preview {
    RedOneView()
}
