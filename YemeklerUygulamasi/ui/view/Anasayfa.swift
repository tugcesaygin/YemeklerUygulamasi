//
//  ContentView.swift
//  YemeklerUygulamasi
//
//  Created by Tuğçe Saygın on 2.04.2024.
//

import SwiftUI

struct Anasayfa: View {
    
    @State private var yemeklerListesi = [Yemekler]()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(yemeklerListesi){ yemek in
                    NavigationLink(destination: DetaySayfa(yemek: yemek)){
                        YemekSatir(yemek: yemek)
                    }
                    
                }
            }.navigationTitle("Yemekler")
                .onAppear{
                    var liste = [Yemekler]()
                    let y1 = Yemekler(yemek_id: 1, yemek_adi: "Baklava", yemek_resim_adi: "baklava", yemek_fiyati: 30)
                    let y2 = Yemekler(yemek_id: 2, yemek_adi: "Cola", yemek_resim_adi: "cola", yemek_fiyati: 35)
                    let y3 = Yemekler(yemek_id: 3, yemek_adi: "Cheeseburger", yemek_resim_adi: "hamburger", yemek_fiyati: 125)
                    let y4 = Yemekler(yemek_id: 4, yemek_adi: "Meatball Spagetti", yemek_resim_adi: "meatball", yemek_fiyati: 120)
                    let y5 = Yemekler(yemek_id: 5, yemek_adi: "Mango Smoothie", yemek_resim_adi: "smoothie", yemek_fiyati: 100)
                    liste.append(y1)
                    liste.append(y2)
                    liste.append(y3)
                    liste.append(y4)
                    liste.append(y5)
                    yemeklerListesi = liste
                    
                }
        }
    }
}

#Preview {
    Anasayfa()
}
