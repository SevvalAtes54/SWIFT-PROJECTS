//
//  ViewController.swift
//  Alpha animation
//
//  Created by my computer on 7.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var butonlabel: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var semsiye: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buton(_ sender: Any) {
        
     //   alphaAnimation()
        //     scaleAnimation()
       // rotateAnimation()
       // rotateAnimation()
      //  TranslationAnimation()
       // gecikmeAnimation()
        tekrarAnimation()
    }
    
    func alphaAnimation(){
        self.semsiye.alpha = 0
        UIView.animate(withDuration: 2.8, animations: {
            self.semsiye.alpha = 1
            
            
        },completion: nil)
        
        
        
        
    }
    
    
    func scaleAnimation(){
    
        
        
        UIView.animate(withDuration: 2.8, animations: {
           
            self.semsiye.transform = CGAffineTransform(scaleX: 2, y: 1)
            
        },completion: nil)
        
        
        
        
    }
    
    func rotateAnimation(){
    
        
        
        UIView.animate(withDuration: 1, animations: {
           
            self.label.transform = CGAffineTransform(rotationAngle: 180 * .pi/180)
            
            
        },completion: nil)
        UIView.animate(withDuration: 1, animations: {
           
            self.label.transform = CGAffineTransform(rotationAngle: 180 * .pi/180)
            
            
        },completion: nil)
        
        
        
    }
    func TranslationAnimation(){
    
        
        
        UIView.animate(withDuration: 2.8, animations: {
           
            self.semsiye.transform = CGAffineTransform(translationX: 50, y: 0)
            
        },completion: nil)
        
        
        
        
    }
    func gecikmeAnimation(){
        
        
        
        UIView.animate(withDuration: 2.8 ,delay: 1, animations: {
            
            self.semsiye.transform = CGAffineTransform(scaleX: 2, y: 1)
            
        },completion: nil)
        
        
        
    }
    func tekrarAnimation(){
    
        
        
        UIView.animate(withDuration: 1,delay: 0,options: [.repeat], animations: {
           
            self.label.transform = CGAffineTransform(rotationAngle: 180 * .pi/180)
            
            
        },completion: nil)
     
        
        
        
        
    }
    
    
}

