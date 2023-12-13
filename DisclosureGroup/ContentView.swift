//
//  ContentView.swift
//  DisclosureGroup
//
//  Created by Hakan Sezer on 13.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @State var country = ""
    
    var body: some View {
        VStack {
            DisclosureGroup("Ülkeler", isExpanded: self.$show) {
                Text("Ülke")
                    .onTapGesture {
                        self.country = ""
                        withAnimation {
                            self.show.toggle()
                        }
                    }
            }
            .padding()
            .background(Color.black.opacity(0.06))
            .cornerRadius(12)
            .padding(.horizontal)
            Text("Seçilen Ülke: \(country)")
                Spacer()
        }
    }
}


#Preview {
    ContentView()
}



