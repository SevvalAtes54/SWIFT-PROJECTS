//
//  Kisilerdao.swift
//  sqlite
//
//  Created by my computer on 11.02.2023.
//

import Foundation
class Kisilerdao{
    let db:FMDatabase?
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory ,.userDomainMask , true).first!
        let veritabani = URL(fileURLWithPath: hedefYol).appendingPathComponent("kisilergiris.sqlite")
        db = FMDatabase(path: veritabani.path)
    }
    func KisiEkle(kisi_ad:String,kisi_yas:Int){
        
        db?.open()
        do{
            try db?.executeQuery("INSERT INTO kisiler(kisi_ad,kisi_yas) VALUES (?,?)", values: [kisi_ad,kisi_yas])
        }
        
        catch{
            print(error.localizedDescription)
        }
        db?.close()
        
    }
    func tumKisilerAl()->[Kisiler]{
        var liste = [Kisiler]()
        db?.open()
        do {
            let rs = try db!.executeQuery("SELECT * FROM kisiler", values: nil)
            while rs.next(){
                let kisi = Kisiler(kisi_id: Int(rs.string(forColumn: "kisi_id" ))!, kisi_ad: rs.string(forColumn: "kisi_ad")!, kisi_yas: Int(rs.string(forColumn: "kisi_yas"))!)
                liste.append(kisi)
            }
        } catch  {
            print(error.localizedDescription)
        }
        
        db?.close()
        return liste
    }
}
