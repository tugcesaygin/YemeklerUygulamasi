//
//  Yemekler.swift
//  YemeklerUygulamasi
//
//  Created by Tuğçe Saygın on 2.04.2024.
//

import Foundation

class Yemekler : Identifiable{
    var yemek_id: Int?
    var yemek_adi: String?
    var yemek_resim_adi:String?
    var yemek_fiyati: Int?
    
    init(){  //Başlatıcılar, sınıfın örneğinin tuttuğu verilerin doğru bir şekilde başlatılmasını sağlarlar ve programın        daha düzenli ve güvenilir olmasını sağlarlar.
                
    }
    
    init(yemek_id: Int, yemek_adi: String, yemek_resim_adi: String, yemek_fiyati: Int) {   //Bu metot, özelliklerin                                                 başlangıç değerlerini belirlemek için kullanılır. Bir örneği                                                     oluşturulurken, bu metot çağrılır ve verilen parametrelere göre                                                  özelliklerin değerleri atanır.
        
        
        self.yemek_id = yemek_id
        self.yemek_adi = yemek_adi
        self.yemek_resim_adi = yemek_resim_adi
        self.yemek_fiyati = yemek_fiyati
    }
    
    
}
