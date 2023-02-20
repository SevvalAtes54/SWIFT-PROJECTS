//
//  QuizEkraniViewController.swift
//  FlagQuiz
//
//  Created by my computer on 20.02.2023.
//

import UIKit

class QuizEkraniViewController: UIViewController {

    @IBOutlet weak var YanlisLabel: UILabel!
    @IBOutlet weak var DogruLabel: UILabel!
    
    @IBOutlet weak var SoruLabel: UILabel!
    
    @IBOutlet weak var imageVieww: UIImageView!
    
    @IBOutlet weak var ButtonA: UIButton!
    @IBOutlet weak var ButtonB: UIButton!
    @IBOutlet weak var ButtonC: UIButton!
    
    @IBOutlet weak var ButtonD: UIButton!
    
    var Sorular = [Bayraklar]()
    var yanlisSecenekler = [Bayraklar]()
    var dogruSoru = Bayraklar()
    var soruSayac = 0
    var DogruSayac = 0
    var YanlisSayac = 0
     var secenekler = [Bayraklar]()
 var secenekleriKaristirma = Set <Bayraklar>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Sorular = Bayraklardao().rastgele5Getir()
        soruYukle()
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let gidilecekVC = segue.destination as! SonuucEkraniViewController
        gidilecekVC.dogruSayisi = DogruSayac
    }
    func soruYukle(){
        
        SoruLabel.text = "\(soruSayac+1). SORU"
        DogruLabel.text = "Doğru \(DogruSayac)"
        YanlisLabel.text = "Yanlis \(YanlisSayac)"
        dogruSoru  = Sorular[soruSayac]
        
        imageVieww.image = UIImage(named: dogruSoru.bayrak_resim!)
        yanlisSecenekler = Bayraklardao().rastgele3YanlisGetir(bayrak_id: dogruSoru.bayrak_id!)
        secenekleriKaristirma.removeAll()
        secenekleriKaristirma.insert(dogruSoru)
        secenekleriKaristirma.insert(yanlisSecenekler[0])
        secenekleriKaristirma.insert(yanlisSecenekler[1])
        secenekleriKaristirma.insert(yanlisSecenekler[2])
        secenekler.removeAll()
        
        for b in secenekleriKaristirma{
            secenekler.append(b)
            
        }
        ButtonA.setTitle(secenekler[0].bayrak_ad, for: .normal)
        ButtonB.setTitle(secenekler[1].bayrak_ad, for: .normal)
        ButtonC.setTitle(secenekler[2].bayrak_ad, for: .normal)
        ButtonD.setTitle(secenekler[3].bayrak_ad, for: .normal)
    }
    
    
    func dogruKontrol(button:UIButton){
        
        let buttonYazi  = button.titleLabel?.text
        let dogruCevap = dogruSoru.bayrak_ad
        print("button yazi \(buttonYazi!)")
        print("button yazi \(dogruCevap!)")
        if dogruCevap == buttonYazi {
            
            DogruSayac+=1
        }else{
            YanlisSayac+=1
        }
        DogruLabel.text = "dogru \(DogruSayac)"
        YanlisLabel.text = "dogru \(YanlisSayac)"
        
    }
    func SoruSayacKontrol(){
        soruSayac += 1
        if soruSayac != 5 {
            
            soruYukle()
        }
        else{
            performSegue(withIdentifier: "toSonucEkrani", sender: nil)
        }
        
        
    }
    @IBAction func ButtonAtikla(_ sender: Any) {
        dogruKontrol(button: ButtonA)
        SoruSayacKontrol()
    }
    @IBAction func Buttonbtikla(_ sender: Any) {
        dogruKontrol(button: ButtonB)
        SoruSayacKontrol()
    }
    @IBAction func ButtonCtikla(_ sender: Any) {
        dogruKontrol(button: ButtonC)
        SoruSayacKontrol()
    }
    
    @IBAction func ButtonDtikla(_ sender: Any) {
        dogruKontrol(button: ButtonD)
        SoruSayacKontrol()
    }
    
    
    

}
