//
//  EklemeSwift.swift
//  NoteAppUi
//
//  Created by my computer on 27.04.2023.
//
import Foundation 
import SwiftUI

struct EklemeSwift: View, Identifiable  {
   @State var id = UUID()
    
    
    @State var name : String = ""
    @State var date : String = ""
    @State var model : String = ""
    @State var color : String = ""
    @State var desc : String = ""
   
    
    var body: some View  {
        
        
            
       
        VStack{
            TextField("enter the name of the car", text: $name).foregroundColor(.black).padding(.leading,70)
            TextField("enter the date of produce", text: $date  ).foregroundColor(.black).padding(.leading,70)
            TextField("enter the model of the car ", text: $model).foregroundColor(.black).padding(.leading,70)
            TextField("enter the color of the car", text: $color).foregroundColor(.black).padding(.leading,70)
            TextField("enter the desc of car", text: $desc).foregroundColor(.black).padding(.leading,70)
        }.navigationTitle("Araba Ekleme")
        
        
        
    }
}

struct EklemeSwift_Previews: PreviewProvider {
    static var previews: some View {
        EklemeSwift()
    }
}

