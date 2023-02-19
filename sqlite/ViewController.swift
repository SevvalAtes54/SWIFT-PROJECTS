//
//  ViewController.swift
//  sqlite
//
//  Created by my computer on 11.02.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       VeriKopyalama()
        Kisilerdao().KisiEkle(kisi_ad: "Ahmet", kisi_yas: 18)
        Kisilerdao().KisiEkle(kisi_ad: "Memo", kisi_yas: 23)
        Kisilerdao().KisiEkle(kisi_ad: "Zeynep", kisi_yas: 33)
        let gelenListe = Kisilerdao().tumKisilerAl()
        
        
        for k in gelenListe{
            print("id : \(k.kisi_id!)   ad: \(k.kisi_ad!)   yas : \(k.kisi_yas!)")
            
            
        }
    }
    
    func VeriKopyalama(){
        
        let bundleYolu = Bundle.main.path(forResource: "kisilergiris", ofType: "sqlite")
        
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory ,.userDomainMask , true).first!
        
        let fileManager = FileManager.default
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appending(component: "kisilergiris.sqlite")
        
        if fileManager.fileExists(atPath: kopyalanacakYer.path){
            print("veritabanı zaten var kopyalamaya gerek yok")
        }
        else{
            do{
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            }
            catch{
                print(error)
            }
            
            
        }
    }
    
    

}

