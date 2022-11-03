import UIKit

/*  var meyveler:[String] = ["elma"  , "karpuz" , "zeytin" , "ananas" , "hindistamcevizi", "ayva"]

var str = meyveler[3]

for (indeks , meyve) in meyveler.enumerated(){
    print("indeks : \(indeks) eleman : \(meyve)")
    
}

print(meyveler)

meyveler.append("nar")
print(meyveler)
meyveler.sort()
print(meyveler)
meyveler += ["mandalina "]
meyveler.isEmpty
meyveler.min()
meyveler.max()
print(meyveler)
meyveler.remove(at: 2)
print(meyveler)
meyveler.contains("ananas")
meyveler.count

meyveler.first
meyveler.last
print(meyveler)

meyveler.insert("domato", at: 3)

print(meyveler)



var dizi = [1,2,3,4,5,6,7,8,9,10]

var sonuc1 = dizi.filter({$0>7})
print(sonuc1)
var sonuc2 = dizi.filter({$0<4})
print(sonuc2)
var sonuc3 = dizi.filter({$0>4 && $0<9})
print(sonuc3)



var orthesdizi = [10,20,50,30,90,80,70,30,40,100]

var toplam = 0
for s in orthesdizi {
    toplam = toplam + s
    
}
print("toplam sayı \(toplam) , sınıfın ortalaması = \(toplam/orthesdizi.count) tur")




var indexdeistir = [1,2,3,4,5]

for(indeks,s ) in indexdeistir.enumerated(){
    
   var sonuc = s * 2
    indexdeistir[ indeks] = sonuc
}

print(indexdeistir)



var cifttekdizi = [1,283,38,392,499,453,234,365]

var ciftdizi = [Int]()
var tekdizi = [Int]()

for s in cifttekdizi {
    
    let sonuc = s%2
    
    if sonuc == 0 {
        ciftdizi.append(s)
        
    }
    else {
        tekdizi.append(s)
    }
}
print(ciftdizi)
print(tekdizi)


var rastgelesayi = [Int]()


for _ in 1...10{
    var sayi = Int.random(in: 1...9)
    rastgelesayi.append(sayi)
    
}

rastgelesayi.sort()
print(rastgelesayi)
 


var dersler = [String]()
var notlar = [Int]()

dersler.append("Tarih")
notlar.append(20)
dersler.append("Fizik")
notlar.append(40)
dersler.append("Kimya")
notlar.append(80)
dersler.append("Biyoloji")
notlar.append(50)
dersler.append("Matematik")
notlar.append(100)

var toplam = 0
for i in 0...(notlar.count-1){
    print("Ders : \(dersler[i])  Not: \(notlar[i])")
    toplam = toplam + notlar[i]
    
    
}
var ortalama = toplam / dersler.count
print("Ortalama : \(ortalama)")
 */
var isimler = ["ahmet","mehmet", "ayşe","fatma"]
var konrtolisim = "ahmet"

for i in isimler {
    if i == konrtolisim {
        print("kontrol isim isim listesinde vardır")
        break
    }
}
