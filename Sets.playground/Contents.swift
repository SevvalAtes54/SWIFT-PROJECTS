import UIKit

var dizi1 = Set<Int>()

var dizi2 : Set = ["istanbul", "ankara ", "izmir"]
var dizi3 : Set <Float> = [1.1 , 2.4 , 5.3]

var meyveler : Set = ["ayva","elma","cilek","muz"]

for meyve in meyveler{
    print(meyve )
}

meyveler.insert("karpuz")
meyveler.insert("havuc")
for (indeks,s) in meyveler.enumerated()  {
    print("\(indeks) : \(s)")
}

meyveler.isEmpty
meyveler.first
meyveler.max()
meyveler.min()

meyveler.count
meyveler.contains("muz")
meyveler.removeFirst()
meyveler.removeAll()


var ciftler : Set = [2,4,6,8]
var tekler : Set = [1,3,5,7,9]
var asallar : Set = [2,3,5,7]
 
tekler.union(ciftler).sorted()
ciftler.intersection(asallar)
tekler.subtracting(asallar)
asallar.symmetricDifference(ciftler)
