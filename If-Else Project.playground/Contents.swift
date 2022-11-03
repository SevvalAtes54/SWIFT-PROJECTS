import UIKit

// ORNEK 1 ::

var dikdörtgen = 1 , kare = 2 , çember = 3 , r = 10 , a = 5 ,b = 8

var secim = 2

if secim == 1 {
let alan = a*a
    print(alan)
}
else if secim == 2 {
    
let alan = a*b
    print(alan)
}
else if secim == 3 {
    let alan = 3.14*Double(r)*Double(r)
    print (alan)
    
}

// ORNEK 2 ::

print("toplama işlemi icin 1")
print("çıkarma islemi icin 2")
print("carpma islemi icin 3")
print("bölme islemi icin 4")

let secim2 = 2
let sayi1 = 40
let sayi2 = 8

if secim2 == 1 {
    
    let sonuc = sayi1 + sayi2
    print("sonuc = \(sonuc)")
}
else if secim2 == 2 {
    let sonuc = sayi1 - sayi2
    print("sonuc = \(sonuc)")
    
}
else if secim2 == 3 {
    
    let sonuc = sayi1 * sayi2
    print("sonuc = \(sonuc)")
}
else if secim == 4 {
    let sonuc = sayi1 / sayi2
    print("sonuc = \(sonuc)")
}
