//
//  DetaySayfa.swift
//  YemeklerUygulamasi
//
//  Created by Tuğçe Saygın on 3.04.2024.
//

import SwiftUI

struct DetaySayfa: View {
    var yemek = Yemekler()
    
    var body: some View {
        VStack(spacing: 75){
            Image(yemek.yemek_resim_adi!).resizable().frame(width: 350,height: 350)
            
            Text("\(yemek.yemek_fiyati!) ₺").font(.system(size: 50)).foregroundColor(.blue)
            
            Button("Sipariş Ver"){
                print("\(yemek.yemek_adi!) sipariş verildi")
            }.foregroundColor(.white)
                .frame(width: 250, height: 50)
                .background(.blue)
                .cornerRadius(10)
        }.navigationTitle(yemek.yemek_adi!)
    }
}


