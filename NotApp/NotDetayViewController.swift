//
//  NotDetayViewController.swift
//  NotApp
//
//  Created by my computer on 22.02.2023.
//

import UIKit

class NotDetayViewController: UIViewController {
    @IBOutlet weak var not2text: UITextField!
    
    @IBOutlet weak var not1text: UITextField!
    @IBOutlet weak var dersAditextt: UITextField!
    var not : Notlar?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let n = not {
            dersAditextt.text = n.ders_adi
            not1text.text = String(n.not1!)
            not2text.text =  String(n.not2!)
            
        }
    }
    
    @IBAction func guncelleButon(_ sender: Any) {
        if let ad = dersAditextt.text  , let not1 = not1text.text , let not2 = not2text.text , let n = not{
            
            if let n1 = Int(not1) , let n2 = Int(not2){
                Notlardao().notGuncelle(not_id: n.not_id!, ders_adi: ad, not1: n1, not2: n2)
            }
        }
        
        
    }
    
    @IBAction func SilButon(_ sender: Any) {
        if let n = not{
            Notlardao().notSil(not_id: n.not_id!)
        }
    }
   
}
