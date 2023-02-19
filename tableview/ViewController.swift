//
//  ViewController.swift
//  tableview
//
//  Created by my computer on 4.02.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        let d = UserDefaults.standard
        
        d.set("ahmet", forKey: "isim")
        d.set("18", forKey: "yas")
        d.set(1.89, forKey: "boy")
        d.set(true, forKey: "medeniDurum")
        let arkadasListesi = ["ayse","ayhan","mevlide"]
        d.set(arkadasListesi, forKey: "arkadaslar")
        let sehirlerListesi: [String:String] = ["ayse":"12","ayhan":"14","mevlide":"21"]
        d.set(sehirlerListesi, forKey: "sehirler")
        
        
        let ad = d.string(forKey: "isim") ?? "isimyok"
        let yass = d.integer(forKey: "yas")
        let boyu = d.double(forKey: "boy")
        let medeniHal = d.bool(forKey: "medeniDurum")
        
        
        print(ad)
        print(yass)
        print(boyu)
        print(medeniHal)
        
        let liste = d.array(forKey: "arkadaslar") as? [String] ?? [String]()
        print(liste[0])
        
        let dict = d.dictionary(forKey: "sehirler") as? [String:String] ?? [String:String]()
        print(dict["ayse"]!)
        d.removeObject(forKey: "isim")
        let adx = d.string(forKey: "isim") ?? "isimyok"
        print(adx)
        
        
        
        d.set("yeni ahmet", forKey: "isim")
        let deneme  = d.string(forKey: "isim") ?? "isimyok"
        print(deneme)
    }


}

