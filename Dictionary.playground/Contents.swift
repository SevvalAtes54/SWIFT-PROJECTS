import UIKit

/* var dict1 = [Int:String]()

var dict2 = [3.44:"pi" ,2.71 : "e"]

var dict3 : [Int:String] = [1:"as",2:"kak", 3:"cup"]


var iller = [16:"Bursa " ,34:"İstanbul" , 54 : "Sakarya"]

iller[35] = "İzmir"
iller[41] = "Kocaeli"

print(iller)

iller[34] = "Yeni İstanbul"

print(iller)

iller.updateValue("yeni Sakarya", forKey: 54)
print(iller)

for (anahtar,deger) in iller {
    print("anahtar : \(anahtar) deger : \(deger)")
    
}
iller.count
iller.first
iller.reversed()
iller.isEmpty
iller.removeAll()


print(iller)


var plakalar = [Int](iller.keys)
var illeri = [String](iller.values)

print(plakalar)
print(illeri)
var notlar = [12,34,65,74,27]
var derssller = ["a","b,","c","d","e"]

var dictnotders = Dictionary(uniqueKeysWithValues: zip(derssller,notlar))
print(dictnotders)



var dict : [Int: String] = [232: "ahmet" , 23 : "mehmet" , 435 : "ayse" , 124 : "ahmet"]

var sonuc1 = dict.filter({$0.key > 200})
print(sonuc1)

var sonuc2 = dict.filter({$0.value == "ahmet"})
print(sonuc2)

var sonuc3 = dict.filter({$0.value == "ahmet" && $0.key > 200})
print(sonuc3)

 */

// KARNE UYGULAMASI

var dersvenotları = [String:Int]()

dersvenotları["tarih"] = 10
dersvenotları["fizik"] = 20
dersvenotları["kimya"] = 80
dersvenotları["bioloi"] = 70
dersvenotları["mat"] = 100
var toplam = 0
for (ders,not) in dersvenotları {
    print("Ders : \(ders) Notu : \(not)")
   toplam = toplam + not
    
}
print("**********************")
print("Ortalama : \(toplam / dersvenotları.values.count) ")










