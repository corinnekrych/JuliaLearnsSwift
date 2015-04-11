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
//: 2. Optional: enum
//: 3. Struct
struct Banana {
    var isPeeled: Bool = false
}

//: Define as let to start with
let julia = Gorilla(name: "Julia")
//: 4. string interpolation
println("Gorilla's name is \(julia.name)")

//: 5. let/var
julia = Gorilla(name: "Gulia")
