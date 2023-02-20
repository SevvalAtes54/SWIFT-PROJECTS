//
//  ViewController.swift
//  FlagQuiz
//
//  Created by my computer on 20.02.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        VeriKopyala()
    }
    func VeriKopyala(){
        let bundleYolu = Bundle.main.path(forResource: "bayrakquiz", ofType: ".sqlite")
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let fileManager = FileManager.default
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol ).appendingPathComponent("bayrakquiz.sqlite")
        if fileManager.fileExists(atPath: kopyalanacakYer.path){
            print("veritabanı zaten var kopyalamaya gerek yok")
        }
        else{
            do {
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path )
            } catch  {
                print(error)
            }
        }
        
        
    }

}

