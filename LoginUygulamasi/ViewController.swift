//
//  ViewController.swift
//  LoginUygulamasi
//
//  Created by my computer on 4.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldKullaniciAd: UITextField!
    @IBOutlet weak var textFieldSifre: UITextField!
    var d = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        let s = d.string(forKey: "sifre") ??   "bos"
        
        if s != "bos" && ka != "bos"{
            performSegue(withIdentifier: "GirisToAnasayfa", sender: nil)
            
            
        }
        
        
        
    }

    @IBAction func GirisButon(_ sender: Any) {
        
        if let ka = textFieldKullaniciAd.text , let s = textFieldSifre.text{
            
            
            if ka == "sevval" && s == "123456" {
                d.set(ka, forKey: "kullaniciAdi")
                d.set(s, forKey: "sifre")
                
                performSegue(withIdentifier: "GirisToAnasayfa", sender: nil)
                
            }
            else{
                print("hatalı giriş")
                
                
            }
        }
    }
            override func viewWillAppear(_ animated: Bool) {
                navigationController?.isToolbarHidden = true
            }
            override func viewWillDisappear(_ animated: Bool) {
                navigationController?.isToolbarHidden = false
            }
            
        }
   
