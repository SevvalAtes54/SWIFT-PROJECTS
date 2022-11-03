import UIKit

for i in 3...5{
    print(i)
    print("merhaba")
}

var sayi1 = 5
var sayi2 = 20
var artis = 5

for a in stride (from: sayi1, through: sayi2, by: artis){
    print (a)
}
var sayi = 10
var sayixx = 49
var artiss = -2

for b in stride (from: sayi1 , through: sayi2 , by: artiss){
    print (b)
}

var sayac = 1
while sayac < 4 {
    print(sayac)
    sayac += 1
}

// 3 6 arasında döngü

for i in 3...6 {
    
    print ("dongu 1 \(i)")
}
var sayac2 = 3
while sayac2 < 7{
    
        print(sayac2)
        sayac2 += 1
    
}

for ac in stride (from: 0, through: 8, by: 2){
    print(ac)
    
}

for ab in stride (from: 8, through: -5, by: -2){
    print(ab)
}


var isim = "ahmet"
var harfsayisi = isim.count

for ibs in 1...harfsayisi {
    
    print("\n \(ibs)")
}




for j in 1...6 {
    if j == 3 {
        break
    }
    print (j)
}

for k in 1...6 {
    
    if k == 3{
        continue
    }
    print(k)
}
