//
//  ContentView.swift
//  SwiftUI List
//
//  Created by Hakan Sezer on 13.12.2023.
//

import SwiftUI

struct Sehir {
    let ad: String
    let durum: String
    let color: Color
}
struct ContentView: View {
    @State var sehirListesi = [
        Sehir(ad: "Istanbul", durum: "Kalabalık", color: .red),
        Sehir(ad: "Ankara", durum: "Kalabalık", color: .red),
        Sehir(ad: "İzmir", durum: "Kalabalık", color: .red),
        Sehir(ad: "Çanakkale", durum: "Orta", color: .blue),
        Sehir(ad: "Adana", durum: "Orta", color: .blue),
        Sehir(ad: "Eskişehir", durum: "Tenha", color: .green),
        Sehir(ad: "Konya", durum: "Tenha", color: .green),
        Sehir(ad: "Tekirdağ", durum: "Tenha", color: .green)
        ]
    
    var body: some View {
        NavigationView {
        List(sehirListesi, id: \.ad) { sehir in
            HStack {
                Text(sehir.ad)
                Text(sehir.durum).foregroundColor(sehir.color)
            }
        }
        .navigationBarTitle(Text("Sehirler"))
        .toolbar {
            Button(action: sehirEkle, label: {
                Image(systemName: "goforward.plus")
                    .foregroundColor(.gray)
            })
        }
    }
}
    func sehirEkle() {
        if let randomSehir = sehirListesi.randomElement() {
            sehirListesi.append(randomSehir)
        }
    }
}

#Preview {
    ContentView()
}
