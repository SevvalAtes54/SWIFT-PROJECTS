//
//  SonuucEkraniViewController.swift
//  FlagQuiz
//
//  Created by my computer on 20.02.2023.
//

import UIKit

class SonuucEkraniViewController: UIViewController {

    @IBOutlet weak var Basari: UILabel!
    @IBOutlet weak var DogruYanlis: UILabel!
    
    var dogruSayisi :Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        if let d = dogruSayisi{
            DogruYanlis.text = "\(d) DOĞRU \(5-d) YANLIŞ"
            Basari.text = "%\(d*100/5) başarı "
        }
    }
    

    @IBAction func TekrarDeneButon(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
