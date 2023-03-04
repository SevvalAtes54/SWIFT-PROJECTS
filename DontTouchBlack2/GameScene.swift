//
//  GameScene.swift
//  DontTouchBlack2
//
//  Created by my computer on 4.03.2023.
//

import SpriteKit
import GameplayKit


enum carpismaTipi: Int32{
    case anakarakter = 1
    case siyahkare = 2
    case saridaire = 3
    case kirmiziucgen = 4
    
    
}

class GameScene: SKScene , SKPhysicsContactDelegate {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    var anakarakter : SKSpriteNode = SKSpriteNode()
    var kirmiziucgen : SKSpriteNode = SKSpriteNode()
    var saridaire : SKSpriteNode = SKSpriteNode()
    var siyahkare : SKSpriteNode = SKSpriteNode()
    var skorLabel : SKLabelNode = SKLabelNode()
    
    var dokunmaKontrolu = false
    
    var sayici : Timer?
    
    var oyunBaslangicKontrol = false
    var viewwcontroller : UIViewController?
    
    var ekranYuksekligi : Int?
    var ekranGenisligi : Int?
    
    var toplamSkor = 0
    
    override func didMove(to view: SKView) {
        self.physicsWorld.contactDelegate = self
        
        ekranGenisligi = Int(self.size.width)
        ekranYuksekligi = Int(self.size.height)
        
        if let tempKarakter = self.childNode(withName: "anakarakter") as? SKSpriteNode{
            anakarakter = tempKarakter
            anakarakter.physicsBody?.categoryBitMask = UInt32(carpismaTipi.anakarakter.rawValue)
            anakarakter.physicsBody?.collisionBitMask = UInt32(carpismaTipi.siyahkare.rawValue) |  UInt32(carpismaTipi.kirmiziucgen.rawValue) |  UInt32(carpismaTipi.saridaire.rawValue)
            anakarakter.physicsBody?.contactTestBitMask = UInt32(carpismaTipi.siyahkare.rawValue) |  UInt32(carpismaTipi.kirmiziucgen.rawValue) |  UInt32(carpismaTipi.saridaire.rawValue)
                
            
        }
        if let tempKarakter = self.childNode(withName: "kirmiziucgen") as? SKSpriteNode {
            kirmiziucgen = tempKarakter
            kirmiziucgen.physicsBody?.categoryBitMask = UInt32(carpismaTipi.kirmiziucgen.rawValue)
            kirmiziucgen.physicsBody?.collisionBitMask = UInt32(carpismaTipi.anakarakter.rawValue)
            kirmiziucgen.physicsBody?.contactTestBitMask = UInt32(carpismaTipi.anakarakter.rawValue)
              
            
        }
        if let tempKarakter = self.childNode(withName: "saridaire") as? SKSpriteNode {
            saridaire = tempKarakter
            saridaire.physicsBody?.categoryBitMask = UInt32(carpismaTipi.saridaire.rawValue)
            saridaire.physicsBody?.collisionBitMask = UInt32(carpismaTipi.anakarakter.rawValue)
            saridaire.physicsBody?.contactTestBitMask = UInt32(carpismaTipi.anakarakter.rawValue)
              
            
        }
        if let tempKarakter = self.childNode(withName: "siyahkare") as? SKSpriteNode {
            siyahkare = tempKarakter
            siyahkare.physicsBody?.categoryBitMask = UInt32(carpismaTipi.siyahkare.rawValue)
            siyahkare.physicsBody?.collisionBitMask = UInt32(carpismaTipi.anakarakter.rawValue)
            siyahkare.physicsBody?.contactTestBitMask = UInt32(carpismaTipi.anakarakter.rawValue)
                
            
        }
        if let tempKarakter = self.childNode(withName: "skorLabel") as? SKLabelNode {
            skorLabel = tempKarakter
            skorLabel.text = "SKOR: 0"
            
        }
   
        sayici = Timer.scheduledTimer(timeInterval: 0.02, target: self, selector: #selector(GameScene.hareket), userInfo: nil , repeats: true)
        
    }
    
   @objc func hareket(){
       if oyunBaslangicKontrol {
           let anaKarakterhiz = CGFloat(ekranGenisligi!/36)
           let kirmiziucgenHiz = CGFloat(ekranGenisligi!/40)
           let saridaireHiz = CGFloat(ekranGenisligi!/75)
           let siyahkaraHiz = CGFloat(ekranGenisligi!/50)
           
           
           
           if dokunmaKontrolu{
               let yukariHareket : SKAction = SKAction.moveBy(x: 0, y: +anaKarakterhiz , duration: 1)
               anakarakter.run(yukariHareket)
               
           }
           else{
               
               let asagiHareket : SKAction = SKAction.moveBy(x: 0, y: -anaKarakterhiz , duration: 1)
               anakarakter.run(asagiHareket)
           }
           cisimlerinSerbestHareketi(cisimadi: siyahkare, cisimhizi: -siyahkaraHiz)
           cisimlerinSerbestHareketi(cisimadi: saridaire, cisimhizi: -saridaireHiz)
           cisimlerinSerbestHareketi(cisimadi: kirmiziucgen, cisimhizi: -kirmiziucgenHiz)
          
           
       }
      
       
        
    }
    func cisimlerinSerbestHareketi (cisimadi : SKSpriteNode ,cisimhizi: CGFloat){
        if (cisimadi.position.x<0) {
            
            cisimadi.position.x  = CGFloat( ekranGenisligi! + 20)
            cisimadi.position.y = -CGFloat( arc4random_uniform(UInt32(ekranYuksekligi!)))
            
           
        }
        else{
            
            let solaHareket:SKAction = SKAction.moveBy(x: cisimhizi, y: 0, duration: 6)
            cisimadi.run(solaHareket)
        }
        
        
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
    
       dokunmaKontrolu = true
        oyunBaslangicKontrol = true
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        print("ekrana oynatıldı")
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        print("ekrana kaldırıldı")
        dokunmaKontrolu = false
       
    }
    func didBegin(_ contact: SKPhysicsContact) {
        
        
        
        if contact.bodyA.categoryBitMask == carpismaTipi.anakarakter.rawValue && contact.bodyB.categoryBitMask == carpismaTipi.siyahkare.rawValue{
            
            let basaAl : SKAction = SKAction.moveBy(x: CGFloat(ekranGenisligi!+20), y:  -CGFloat( arc4random_uniform(UInt32(ekranYuksekligi!))) , duration: 0.02)
            siyahkare.run(basaAl)
            print("a bye çarptı")
           
            sayici?.invalidate()
            
            let d = UserDefaults.standard
            d.set(toplamSkor, forKey: "anlikSkor")
            
            self.viewwcontroller?.performSegue(withIdentifier: "oyunToSonuc", sender: nil)
           
        }
       
        if contact.bodyB.categoryBitMask == carpismaTipi.anakarakter.rawValue && contact.bodyA.categoryBitMask == carpismaTipi.siyahkare.rawValue{
            
            let basaAl : SKAction = SKAction.moveBy(x: CGFloat(ekranGenisligi!+20), y:  -CGFloat( arc4random_uniform(UInt32(ekranYuksekligi!))) , duration: 0.02)
            siyahkare.run(basaAl)
            
            print("B aya çarptı")
            sayici?.invalidate()
            
            let d = UserDefaults.standard
            d.set(toplamSkor, forKey: "anlikSkor")
            
               self.viewwcontroller?.performSegue(withIdentifier: "oyunToSonuc", sender: nil)
            
            
        }
        if contact.bodyA.categoryBitMask == carpismaTipi.anakarakter.rawValue && contact.bodyB.categoryBitMask == carpismaTipi.saridaire.rawValue{
            
            let basaAl : SKAction = SKAction.moveBy(x: CGFloat(ekranGenisligi!+20), y:  -CGFloat( arc4random_uniform(UInt32(ekranYuksekligi!))) , duration: 0.02)
            saridaire.run(basaAl)
            print("a bye çarptı")
            toplamSkor = toplamSkor + 50
            skorLabel.text = "SKOR: \(toplamSkor)"
        }
       
        if contact.bodyB.categoryBitMask == carpismaTipi.anakarakter.rawValue && contact.bodyA.categoryBitMask == carpismaTipi.saridaire.rawValue{
            
            let basaAl : SKAction = SKAction.moveBy(x: CGFloat(ekranGenisligi!+20), y:  -CGFloat( arc4random_uniform(UInt32(ekranYuksekligi!))) , duration: 0.02)
            saridaire.run(basaAl)
            
            print("B aya çarptı")
            toplamSkor = toplamSkor + 50
            skorLabel.text = "SKOR: \(toplamSkor)"
            
        }
        
        
        if contact.bodyA.categoryBitMask == carpismaTipi.anakarakter.rawValue && contact.bodyB.categoryBitMask == carpismaTipi.kirmiziucgen.rawValue{
            
            let basaAl : SKAction = SKAction.moveBy(x: CGFloat(ekranGenisligi!+20), y:  -CGFloat( arc4random_uniform(UInt32(ekranYuksekligi!))) , duration: 0.02)
            kirmiziucgen.run(basaAl)
            print("a bye çarptı")
            toplamSkor = toplamSkor + 20
            skorLabel.text = "SKOR: \(toplamSkor)"
            
        }
       
        if contact.bodyB.categoryBitMask == carpismaTipi.anakarakter.rawValue && contact.bodyA.categoryBitMask == carpismaTipi.kirmiziucgen.rawValue{
            
            let basaAl : SKAction = SKAction.moveBy(x: CGFloat(ekranGenisligi!+20), y:  -CGFloat( arc4random_uniform(UInt32(ekranYuksekligi!))) , duration: 0.02)
            kirmiziucgen.run(basaAl)
            
            print("B aya çarptı")
            toplamSkor = toplamSkor + 20
            skorLabel.text = "SKOR: \(toplamSkor)"
            
        }
        
        
        
        
        
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
