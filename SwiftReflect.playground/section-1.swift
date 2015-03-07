// Playground - noun: a place where people can play

import UIKit

class animal {
    let animalName: String
    let color: String
    
    init(animalName: String, color: String) {
        self.animalName = animalName
        self.color = color
    }
}

let dog = animal(animalName: "Fido", color: "white")

let dogProperties = reflect(dog)

dogProperties.count

for index in 0...dogProperties.count-1 {
    let (name, child) = dogProperties[0]
    if child.valueType is String.Type {
        println("\(name) is a string")
    }
    else {
        println("It isn't a string")
    }
}




