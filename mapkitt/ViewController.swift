//
//  ViewController.swift
//  mapkitt
//
//  Created by my computer on 24.02.2023.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapvieww: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let konum = CLLocationCoordinate2D(latitude: 40.7323526, longitude: 29.9101456)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let bolge = MKCoordinateRegion(center: konum , span: span)
        
        mapvieww.setRegion(bolge, animated: true)
        
        
        // Do any additional setup after loading the view.
    }


}

