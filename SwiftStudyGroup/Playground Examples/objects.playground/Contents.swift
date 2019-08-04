import UIKit

//////////////STRUCTURES//////////////////
struct ShapeStruct {
    var color: String
    var size: Int
    var name: String

    func getMessage() -> String{
        return "My shape is \(color)"
    }
}

var myShape = ShapeStruct(color: "Pink", size: 5, name: "Square")
myShape.getMessage()

var myShape1 = ShapeStruct(color: "Pink", size: 5, name: "Square")
var myShape2 = ShapeStruct(color: "Yellow", size: 2, name: "Circle")
var myShape3 = ShapeStruct(color: "Green", size: 9, name: "Rectangle")

var myShapeArray = [myShape1,myShape2,myShape3]

let sortShapes = myShapeArray.sorted(by: {
    (firstShape: ShapeStruct, secondShape: ShapeStruct) -> Bool
    in
    if firstShape.size <= secondShape.size{
        return true
    }else {
            return false
        }
    })

let sortShapesShort = myShapeArray.sorted(by:) { $0.size <= $1.size }

print(myShapeArray)
print(sortShapes)
print(myShape1.color)
print(myShape1.getMessage())

//////////////////ENUMS//////////////////////
enum ShapeEnum{
    case square
    case circle
    case triangle
}

var myShapeEnum: ShapeEnum
myShapeEnum = ShapeEnum.circle
myShapeEnum = .square


/////////////////DICTIONARY////////////////////////
var shapeDictionary = ["triangle": 3, "rectangle": 4, "circle": 0]

// Change value on an existent entry
shapeDictionary["rectangle"] = 5
// Add a neew entry
shapeDictionary["hexagon"] = 6
// Remove an existent entry
shapeDictionary["hexagon"] = nil

// Print all key and value pairs
for (key, value) in shapeDictionary {
    print("The shape \(key) has \(value) corners")
}

//////////////////OBJECTS//////////////////////
class Shape: CustomStringConvertible {
    var colour: String
    var size: Int
    var name: String
    var description: String

    init(){
        self.colour = ""
        self.size = 0
        self.name = ""
        self.description = ""
    }

    init(colour: String, size: Int, name: String){
        self.colour = colour
        self.size = size
        self.name = name
        self.description = "My shape is a \(self.name) colored \(self.colour) with a size of \(self.size)"
    }
}

var myShapeObject = Shape(colour: "Pink", size: 5, name: "Square")

print(myShapeObject)

