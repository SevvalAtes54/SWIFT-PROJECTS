//
//  ContentView.swift
//  NoteAppUi
//
//  Created by my computer on 27.04.2023.
//
import Foundation 
import SwiftUI

struct ContentView: View {
    @State private var araba: EklemeSwift?
    @State var arabalar = [DefaultOnes]()
    @State var arablalar : [DefaultOnes] = DefaulCarList.Cars
    var body: some View {
        
        NavigationView(){
            List(arablalar, id : \.id){ car in
                NavigationLink(destination: SwiftUIView(car: car), label: {
                    
                    
                    VStack{
                        HStack{
                            Image(car.image).resizable().frame(width: 160,height: 100).scaledToFit()
                            VStack{
                                Text(car.name).bold().equatable() .frame(maxWidth: .infinity, alignment: .center)
                                Text(car.color)
                                Text(car.model)
                                Text(String(car.date)).foregroundColor(.secondary)
                            }
                            
                        }
                        
                    }
                })
                
            }
            .navigationTitle("Arabalar")
            .toolbar {
                Button(action: {
                    let newCar = DefaultOnes(
                        date: 0,
                        model: araba?.model ?? "",
                        color: araba?.color ?? "",
                        name: araba?.name ?? "",
                        image: "sari",
                        description: araba?.desc ?? "",
                        watch: 0
                    )
                    arabalar.append(newCar)
                    araba = EklemeSwift()
                }) {
                    Image(systemName: "plus")
                }
            }
            .sheet(item: $araba) { item in
                NavigationView {
                    EklemeSwift(araba: $araba)
                        .navigationBarItems(trailing: Button("Done") {
                            self.araba = nil
                        })
                }
            }
        }
        
        
        
    }
    
}

        
    
    




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
