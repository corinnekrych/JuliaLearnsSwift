//: The problem with object-oriented languages is they’ve got all this implicit environment that they carry around with them.
//: #### You wanted a banana but what you got was a gorilla holding the banana and the entire jungle.
//: — Joe Armstrong

//: 1. Define class
class Gorilla {
    var name: String
    var banana: Banana? = nil
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
var julia = Gorilla(name: "Julia")
//: 4. string interpolation
println("Gorilla's name is \(julia.name)")

//: 5. Optional unwrapp
julia.banana = Banana()
var juliaBanana:Banana
//: check before unwrapping
if julia.banana != nil {
    juliaBanana = julia.banana!
    println("Julias has a banana \(juliaBanana.isPeeled)")
}
//: if let unwrapping
if let banana = julia.banana {
    juliaBanana = banana
    println("Julias has a banana \(juliaBanana.isPeeled)")
}
//: force unwrap
println("Julias has a banana \(julia.banana!.isPeeled)")

//: 6. Optional nil colaxing
juliaBanana = julia.banana ?? Banana()
println("Julias has a banana \(juliaBanana.isPeeled)")
