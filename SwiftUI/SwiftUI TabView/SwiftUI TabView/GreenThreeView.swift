//
//  GreenThreeView.swift
//  SwiftUI TabView
//
//  Created by Hakan Sezer on 13.12.2023.
//

import SwiftUI

struct GreenThreeView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200,height: 200)
                .foregroundColor(.green)
            Text("\(3)")
                .foregroundColor(.white)
                .font(.system(size: 70,weight: .bold))
        }
    }
}

#Preview {
    GreenThreeView()
}
