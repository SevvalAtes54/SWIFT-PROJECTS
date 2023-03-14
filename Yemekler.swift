//
//  Yemekler.swift
//  FoodOrder
//
//  Created by my computer on 14.03.2023.
//

import Foundation
import SwiftUI
class Yemekler : Identifiable{
    
    var id:Int?
    var yemekAdi:String?
    var yemekResimAdi:String?
    var yemekFiyat:Float?
    init(){
        
    }
    init(id: Int? = nil, yemekAdi: String? = nil, yemekResimAdi: String? = nil, yemekFiyat: Float? = nil) {
        self.id = id
        self.yemekAdi = yemekAdi
        self.yemekResimAdi = yemekResimAdi
        self.yemekFiyat = yemekFiyat
    }
    
}
