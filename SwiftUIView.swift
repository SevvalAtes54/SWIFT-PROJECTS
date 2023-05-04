//
//  SwiftUIView.swift
//  NoteAppUi
//
//  Created by my computer on 27.04.2023.
//

import SwiftUI

struct SwiftUIView: View {
    var car : DefaultOnes
    var body: some View {
        NavigationView(){
            VStack{
                Image(car.image).resizable().scaledToFit().frame(width: 350,height: 350).padding(.all,-50)
                Text(car.name).bold().font(.largeTitle)
                Text(car.description)
                HStack{
                    
                    Text("\(car.watch) \(Image(systemName: "eye.fill"))").foregroundColor(.secondary)
                    Spacer().fixedSize().padding(15)
                    Text(String(car.date)).foregroundColor(.secondary)

                }            }.padding(.top,-200)
           
        }
       
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(car: DefaulCarList.Cars.first!)
    }
}
