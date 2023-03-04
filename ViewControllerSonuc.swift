//
//  ViewControllerSonuc.swift
//  DontTouchBlack2
//
//  Created by my computer on 4.03.2023.
//

import UIKit

class ViewControllerSonuc: UIViewController {

    @IBOutlet weak var enYuksekSkorLabel: UILabel!
    @IBOutlet weak var anlikSkorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let d = UserDefaults.standard
        
        let anlikSkor = d.integer(forKey: "anlikSkor")
        let yuksekSkor = d.integer(forKey: "yuksekSkor")
        anlikSkorLabel.text = "\(anlikSkor)"
        if anlikSkor > yuksekSkor {
            d.set(anlikSkor, forKey: "yuksekSkor")
            enYuksekSkorLabel.text = "\(anlikSkor)"
            
        }
        else{
            enYuksekSkorLabel.text = "\(yuksekSkor)"
        }
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    
    @IBAction func TekrarOynaButon(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
