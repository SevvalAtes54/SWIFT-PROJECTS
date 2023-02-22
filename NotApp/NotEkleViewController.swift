//
//  NotEkleViewController.swift
//  NotApp
//
//  Created by my computer on 22.02.2023.
//

import UIKit

class NotEkleViewController: UIViewController {

    @IBOutlet weak var not2text: UITextField!
    @IBOutlet weak var not1text: UITextField!
    @IBOutlet weak var dersAdText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func notEkleButon(_ sender: Any) {
        if let ad = dersAdText .text , let not1 = not1text.text , let not2 = not2text.text{
            
            if let n1 = Int(not1) , let n2 = Int(not2){
                    
                Notlardao().notEkle(ders_adi: ad, not1: n1, not2: n2)
                
            }
            
        }
    }
   

}
