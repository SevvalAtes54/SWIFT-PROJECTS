//
//  ContentView.swift
//  FoodOrder
//
//  Created by my computer on 14.03.2023.
//

import SwiftUI

struct SatirTasarimi: View {
    var yemek = Yemekler()
    
    var body: some View {
        GeometryReader{ geometry in
         
            Image(self.yemek.yemekResimAdi!).resizable().frame(width: 100,height: 100)
            VStack(alignment: .leading, spacing: 85){
                Text(self.yemek.yemekAdi!)
                Text("\(String(format:"%.2f", self.yemek.yemekFiyat!)) \u{20BA}").foregroundColor(.blue)
                
                
            }
            Spacer()
            Text("Sipariş Ver").foregroundColor(.red).onTapGesture {
                print("\(self.yemek.yemekAdi!) TL")
            }.frame(width: geometry.size.width,height: geometry.size.height)
            
        }
        
       
    }
}
struct ContentView: View {
    @State private var yemeklerListesi = [Yemekler]()
    var body: some View {
        
        NavigationView{
            
            List{
                ForEach(yemeklerListesi){ yemek in
                   
                    
                    NavigationLink(destination: YemekDetay(gelenYemek: yemek)){
                        SatirTasarimi(yemek: yemek)
                    }
                    
                }.frame(height: 140)
                
                
                
                
            }.navigationTitle("Yemekler")
            
        }.onAppear(){
            let y1 = Yemekler(id: 1 ,yemekAdi:"Su",yemekResimAdi: "su" ,yemekFiyat:3.0)
            let y2 = Yemekler(id: 2 ,yemekAdi:"Ayran",yemekResimAdi: "ayran" ,yemekFiyat:5.0)
            let y3 = Yemekler(id: 3 ,yemekAdi:"Baklava",yemekResimAdi: "baklava" ,yemekFiyat:15.0)
            let y4 = Yemekler(id: 4 ,yemekAdi:"Fanta",yemekResimAdi: "fanta" ,yemekFiyat:10.0)
            let y5 = Yemekler(id: 5 ,yemekAdi:"Izgara Somon",yemekResimAdi: "izgarasomon" ,yemekFiyat:50.0)
            let y6 = Yemekler(id: 6 ,yemekAdi:"Izgara Tavuk",yemekResimAdi: "izgaratavuk" ,yemekFiyat:65.0)
            let y7 = Yemekler(id: 7 ,yemekAdi:"Kadayıf",yemekResimAdi: "kadayif" ,yemekFiyat:45.0)
            let y8 = Yemekler(id: 8 ,yemekAdi:"Kahve",yemekResimAdi: "kahve" ,yemekFiyat:20.0)
            let y9 = Yemekler(id: 9 ,yemekAdi:"Köfte",yemekResimAdi: "kofte" ,yemekFiyat:45.0)
            let y10 = Yemekler(id: 10 ,yemekAdi:"Lazanya",yemekResimAdi: "lazanya" ,yemekFiyat:35.0)
            let y11 = Yemekler(id: 10 ,yemekAdi:"Makarna",yemekResimAdi: "makarna" ,yemekFiyat:30.0)
            let y12 = Yemekler(id: 12 ,yemekAdi:"Pizza",yemekResimAdi: "pizza" ,yemekFiyat:55.0)
            let y13 = Yemekler(id: 13 ,yemekAdi:"Sütlaç",yemekResimAdi: "sutlac" ,yemekFiyat:30.0)
            let y14 = Yemekler(id: 14 ,yemekAdi:"Tiramisu",yemekResimAdi: "tiramisu" ,yemekFiyat:25.0)
            self.yemeklerListesi.append(y1)
            self.yemeklerListesi.append(y2)
            self.yemeklerListesi.append(y3)
            self.yemeklerListesi.append(y4)
            self.yemeklerListesi.append(y5)
            self.yemeklerListesi.append(y6)
            self.yemeklerListesi.append(y7)
            self.yemeklerListesi.append(y8)
            self.yemeklerListesi.append(y9)
            self.yemeklerListesi.append(y10)
            self.yemeklerListesi.append(y11)
            self.yemeklerListesi.append(y12)
            self.yemeklerListesi.append(y13)
            self.yemeklerListesi.append(y14)
        }
    }
}
struct YemekDetay : View{
    var gelenYemek = Yemekler()
    var body: some View{
        VStack{
            Image(self.gelenYemek.yemekResimAdi!)
            
            Text("\(String(format:"%.2f", self.gelenYemek.yemekFiyat!)) \u{20BA}").foregroundColor(.blue).font(.largeTitle)
            Spacer()
            
            Text("Sipariş Ver").font(.largeTitle)
                .frame(width: 250,height: 110).background(.blue)
                .foregroundColor(.white).cornerRadius(10.0)
            
        }.navigationTitle("\(self.gelenYemek.yemekAdi!)")
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
