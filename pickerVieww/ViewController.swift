//
//  ViewController.swift
//  pickerVieww
//
//  Created by my computer on 4.02.2023.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var realpickerview: UIPickerView!
   
    @IBOutlet weak var label: UILabel!
    var ulkeler = [String]()
    var secilenulke : String?
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ulkeler = ["turkiye","almanya","ingiltere"]
        realpickerview.delegate = self
        realpickerview.dataSource = self
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = ulkeler[row]
        secilenulke = ulkeler[row]
    }
    @IBAction func butonGoster(_ sender: Any) {
        print(secilenulke!)
    }
    
    
}

