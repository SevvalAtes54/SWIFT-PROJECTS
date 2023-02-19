//
//  ViewController.swift
//  Kisiler Uygulamasi
//
//  Created by my computer on 6.02.2023.
//

import UIKit
import CoreData
let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {
    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    
    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        tableView.delegate = self
        tableView.dataSource = self
        
        searchBar.delegate = self
      
    }
    override func viewWillAppear(_ animated: Bool) {
        tumKisilerAl()
        tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    func tumKisilerAl(){
        do {
            kisilerListe =  try context.fetch(Kisiler.fetchRequest())
        } catch  {
            print(error)
        }
        
    }
    
    
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let kisi = kisilerListe[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "kisiHucre", for: indexPath) as! kisiHucreTableViewCell
        
        cell.KisiYaziLabel.text = "\(kisi.kisi_ad!) - \(kisi.kisi_tel)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDetay", sender: indexPath.row)
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let silAction = UITableViewRowAction(style: .default, title: "Sil", handler:{
            
       ( ACTION : UITableViewRowAction,indexPath:IndexPath) -> Void in
            print("sil tıklandı \(self.kisilerListe[indexPath.row])")
            
        })
        let GuncelleAction = UITableViewRowAction(style: .default, title: "Sil", handler:{
            
       ( ACTION : UITableViewRowAction,indexPath:IndexPath) -> Void in
            print("Guncelle tıklandı \(self.kisilerListe[indexPath.row])")
            self.performSegue(withIdentifier: "toGuncelle", sender: indexPath.row)
            
        })
        return [silAction,GuncelleAction]
     
    }
    
}

extension ViewController:UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("arama sonuc \(searchText )")
    }
}
