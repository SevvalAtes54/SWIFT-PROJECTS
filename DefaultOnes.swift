//
//  DefaultOnes.swift
//  NoteAppUi
//
//  Created by my computer on 27.04.2023.
//

import Foundation
import SwiftUI

struct DefaultOnes : Identifiable {
    let id = UUID()
    var date : Int
    var model : String
    var color : String
    var name : String
    var image :String
    var description : String
    var watch : Int
}
struct DefaulCarList{
    
    static let Cars = [
        DefaultOnes(date: 2016, model: "motorlu", color: "sarı", name: "volvo",image: "sari",description: "this car is the most beautiful car you can ever see because of this calor and its motor . the motor of this car is so powerful and you can make speed with that car in 0.2 seconds easily",watch: 4534),
        DefaultOnes(date: 2010, model: "lpg", color: "siyah", name: "cady",image: "siyah",description: " The sleek and stylish, a true driving enthusiast's dream car. Its sporty design features sharp lines and an aggressive front grille that hints at the power that lies under the hood. With a turbocharged six-cylinder engine producing up to 473 horsepower, this car can go from 0 to 60 mph in just 4.1 seconds. The interior is just as impressive, with premium materials and advanced technology that create a luxurious driving experience.",watch: 4625),
        DefaultOnes(date: 2013, model: "manuel", color: "mavi", name: "astra",image: "mavi",description: "astra is the perfect car for those who want a fuel-efficient SUV without sacrificing performance. With a plug-in hybrid powertrain producing up to 302 horsepower, this car can go from 0 to 60 mph in just 5.7 seconds. The RAV4 Prime also has an all-electric driving range of up to 42 miles, making it perfect for short commutes and running errands around town. The interior is spacious and comfortable, with plenty of cargo space for all your gear.",watch: 4468),
        DefaultOnes(date: 2011, model: "otomatik", color: "kırmızı", name: "corsa",image: "kirmizii",description: "corsa is a luxury SUV that combines power and elegance. Its sleek lines and refined design are complemented by a twin-turbocharged V6 engine that produces up to 434 horsepower. This car can go from 0 to 60 mph in just 4.9 seconds, making it one of the fastest SUVs on the market. The interior is just as impressive, with premium materials and advanced technology that create a comfortable and luxurious driving experience. Whether you're driving in the city or cruising on the highway, the Porsche Cayenne is sure to turn heads.",watch: 9546)
        
    ]
    
}
