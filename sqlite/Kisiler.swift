//
//  Kisiler.swift
//  sqlite
//
//  Created by my computer on 11.02.2023.
//

import Foundation

class Kisiler{
    var kisi_id:Int?
    var kisi_ad:String?
    var kisi_yas:Int?
    init(){
        
    }
   
    init(kisi_id: Int, kisi_ad: String, kisi_yas: Int) {
        self.kisi_id = kisi_id
        self.kisi_ad = kisi_ad
        self.kisi_yas = kisi_yas
    }
   
    
}
