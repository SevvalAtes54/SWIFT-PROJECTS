//
//  ViewController.swift
//  NotApp
//
//  Created by my computer on 21.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableVieww: UITableView!
    
    var notlarListe = [Notlar]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         veriTabaniKopyala()
       
        
        tableVieww.delegate = self
        tableVieww.dataSource = self
        
        notlarListe = Notlardao().TumNotlarAl()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        notlarListe = Notlardao().TumNotlarAl()
        tableVieww.reloadData()
         
        var toplam = 0
        for n in notlarListe{
            toplam = toplam + (n.not1! + n.not2!)/2
            
        }
        if notlarListe.count != 0{
            navigationItem.prompt = "Ortalama = \(toplam / notlarListe.count)"
            
        }
        else{
            navigationItem.prompt = "Ortalama YOK"
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indeks = sender as? Int
        
        if  segue.identifier == "doDetay"{
            let gidilecekVC = segue.destination  as! NotDetayViewController
            gidilecekVC.not = notlarListe[indeks!]
        }
    }
    
    
    func veriTabaniKopyala(){
        let bundleYolu = Bundle.main.path(forResource: "notlar", ofType: ".sqlite")
        
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let fileManager = FileManager.default
        
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("notlar.sqlite")
        if fileManager.fileExists(atPath: kopyalanacakYer.path){
            print("dosya mevcut kopyalamaya gerek yok")
        }else{
            do {
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            } catch  {
                print(error)
            }
            
            
            
        }
        
    }

}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return notlarListe.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let not = notlarListe[indexPath.row]
        let cell =   tableView.dequeueReusableCell(withIdentifier: "notHucre", for: indexPath) as! NotUygulamaTableViewCell
        cell.DersLabel.text = not.ders_adi
        cell.not1.text = String(not.not1!)
        cell.not2.text = String(not.not2!)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "toDetay", sender: indexPath.row)
        
        
    }
    
}


