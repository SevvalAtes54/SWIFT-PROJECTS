//
//  ViewController.swift
//  Core Data Giris
//
//  Created by my computer on 6.02.2023.
//

import UIKit
import CoreData


let appDelegate = UIApplication.shared.delegate as! AppDelegate
class ViewController: UIViewController {
    let context = appDelegate.persistentContainer.viewContext
    var kisiListe = [Kisiler]()
    override func viewDidLoad() {
        super.viewDidLoad()
       // veriKaydi()
        veriOku()
    //   veriSil()
        veriGuncelle()
        print("**********************")
        veriOku()
    }
    func veriKaydi(){
      let kisi = Kisiler(context: context)
        
        kisi.kisi_ad = "mehmet "
        kisi.kisi_yas = 33
        
        appDelegate.saveContext()
    }

    func veriOku(){
        
        
        do{
            kisiListe = try context.fetch(Kisiler.fetchRequest())
        }
        catch{
            print("okunurken hata olustu")
        }
        for k in kisiListe{
            
            print("\(k.kisi_yas) \(k.kisi_ad!)")
            
        }
    }
    
    func veriSil(){
        let kisi = kisiListe[1]
        context.delete(kisi)
        appDelegate.saveContext()
        
        
        
    }
    func veriGuncelle(){
        let kisi = kisiListe[1]
        kisi.kisi_ad = "derya"
        kisi.kisi_yas = 13
        appDelegate.saveContext()
        
        
    }
    
    func veriOkuSirala(){
        
        let fetchRequest: NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
        
        let sort = NSSortDescriptor(key: #keyPath(Kisiler.kisi_yas), ascending: true)
        
        fetchRequest.sortDescriptors = [sort]
        do{
            kisiListe = try context.fetch(Kisiler.fetchRequest())
        }
        catch{
            print("okunurken hata olustu")
        }
        for k in kisiListe{
            
            print("\(k.kisi_yas) \(k.kisi_ad!)")
            
        }
    }
    
    func veriPredicate(){
        
        let fetchRequest: NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
       
        fetchRequest.predicate = NSPredicate(format: "kisi_yas == %i", 18)
        
        
        
        
        do{
            kisiListe = try context.fetch(Kisiler.fetchRequest())
        }
        catch{
            print("okunurken hata olustu")
        }
        for k in kisiListe{
            
            print("\(k.kisi_yas) \(k.kisi_ad!)")
            
        }
}

