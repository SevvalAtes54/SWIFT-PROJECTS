import UIKit
// RASTGELE SAYI

for _ in 1...10{
    let sayi = Int.random(in: 0...9)
   // print(sayi)
}

// MATEMATİKSEL İŞLEMLER

let f = floor(6.4) // floor yani hep alt değere yuvarlar
 print(f)
let c = ceil(6.4)  // ceil yani hep üst değere yuvarlar
print(c)

let s = sqrt(4.0)// kök alır
print(s)

let p = pow(2.0, 3.0) // üstel sayı alır
print(p)

let a = abs(-10) // mutlak değerleri hep artıya çevirir
print(a)

let mn = min(100, 200) // ki değer arasındaki en küçük değeri bulur
print(mn)
let mx = max(100, 200) // iki değer arasındaki en büyük değeri bulur
print(mx)

//TARİHSEL İFADELER

let tarih = Date()

let takvim = Calendar.current

let yıl = takvim.component(.year, from: tarih)
let ay = takvim.component(.month, from: tarih)
let gün = takvim.component(.day, from: tarih)
let saat = takvim.component(.hour, from: tarih)
let dakika = takvim.component(.minute, from: tarih)
let saniye = takvim.component(.second, from: tarih)

print(yıl)
print(ay)
print(gün)
print(saat)
print(dakika)
print(saniye)


// ÖLÇÜ BİRİMLERİ

let metre = Measurement.init(value: 50, unit: UnitLength.meters)
print(metre)

let kilometre = Measurement.init(value: 1, unit: UnitLength.kilometers)
print(kilometre)

let mil = Measurement.init(value: 1, unit: UnitLength.miles)
print(mil)

let sonuc = metre + kilometre
print(sonuc)
let a1 = sonuc.converted(to: .kilometers)

let kiloher = Measurement.init(value: 50, unit: UnitFrequency.kilohertz)


let c1 = kiloher.converted(to: UnitFrequency.gigahertz)

let sicaklik = Measurement.init(value: 50, unit: UnitTemperature.fahrenheit)

let s1 = sicaklik.converted(to: UnitTemperature.kelvin)

