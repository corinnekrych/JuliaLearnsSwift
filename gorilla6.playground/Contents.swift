//: The problem with object-oriented languages is they’ve got all this implicit environment that they carry around with them.
//: #### You wanted a banana but what you got was a gorilla holding the banana and the entire jungle.
//: — Joe Armstrong
protocol JungleElement {}
//: 1. Define class
class Gorilla: JungleElement {
    var name: String
    var banana: Banana? = nil
    init(name: String) {
        self.name = name
    }
}
//: 2. Optional: enum
//: 3. Struct
struct Banana: JungleElement {
    var isPeeled: Bool = false
}

//: Define as let to start with
var julia = Gorilla(name: "Julia")
//: 4. string interpolation
println("Gorilla's name is \(julia.name)")
//: 5. let/var
julia = Gorilla(name: "Gulia")

//: 6. Struct/Classes: pass by value or reference
var emilie = Gorilla(name: "Emilie")
var alice = emilie
emilie.name = "Emily"
alice.name = "Alice"
println("Emilie:\(emilie.name) and Alice \(alice.name)")

var banana = Banana()
var rottenBanana = banana
rottenBanana.isPeeled = true
println("Banana is peeled: \(banana.isPeeled)")
println("Rotten Banana is peeled: \(rottenBanana.isPeeled)")

//: 7. what about using let for the instances?

//: 8. Array/Dictionary
// initially [Gorilla]
struct Jungle {
    var elements: [JungleElement] = []
}

var jungle = Jungle()
jungle.elements = [emilie, alice]
jungle.elements += [julia] as [JungleElement]
jungle.elements += [banana] as [JungleElement]
jungle.elements

//: 10. Strongly type and Protocol
import UIKit

var juliaImage = UIImage(named: "Julia2")


