//: The problem with object-oriented languages is they’ve got all this implicit environment that they carry around with them.
//: #### You wanted a banana but what you got was a gorilla holding the banana and the entire jungle.
//: — Joe Armstrong

//: 1. Define class

class Gorilla {
    var name: String
    var banana: Optional<Banana> = nil
    init(name: String) {
        self.name = name
    }
}

struct Banana {
    var isPeeled: Bool = false
}

var julia = Gorilla(name: "Julia")
println("Gorilla's name:: \(julia.name)")

//: 2. Optional: enum
//: 3. Struct

julia.banana = Banana()
//: 4. string interpolation
println("Julia's banae is peeled: \(julia.banana!.isPeeled)")
if let banana = julia.banana {
    println("Julia's banae is peeled: \(banana.isPeeled)")
}

//: nil coalexing

let juliaBanana = julia.banana ?? Banana()

//: 5. let/var
//: 6. Struct/Classes: pass by value or reference
var alice = Gorilla(name: "Alice")
var emilie = alice
emilie.name = "Emily"
println("Alice:\(alice.name) Emily: \(emilie.name)")

var blueBanana = Banana()
var rottenBanana = blueBanana
rottenBanana.isPeeled = true
println("blueBanan:\(blueBanana.isPeeled) rooten:: \(rottenBanana.isPeeled)")

//: 7. what about using let for the alice, emily, banana, tottenBanana instances?

struct Jungle {
    var inhabitants: [Gorilla] = []
}

var jungle = Jungle()
//: 8. Array/Dictionary
jungle.inhabitants = [alice, emilie]
jungle.inhabitants += [julia]

//: 9. Usage of filter, map

let bananas = jungle.inhabitants.filter { $0.banana?.isPeeled == false}


bananas.count

bananas.map {println($0.name)}

let toPrintString = reduce(bananas, "who's got bananas?::") { $0 + " " + $1.name}
println(toPrintString)


import UIKit

var juliaImage = UIImage(named: "Julia.jpg")


