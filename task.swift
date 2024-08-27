// Урок 10. Протоколы, классы и расширения

struct Pizza {
    var price: Double
    var crustType: String
    var toppings: [Toppings]
    var pizzaType: PizzaType
}

struct FrenchFries {
    var price: Double
    var size: String
}

protocol OpenClose {
    func open()
    func close()
}

enum PizzaType {
    case margherita
    case pepperoni
    case vegetarian
    case hawaiian
    case mushroom
}

enum Toppings {
    case pepperoni
    case tomatoes
    case cheese
}

class Pizzeria: OpenClose {
    private var menu: [Any] = []
    
    func addMenuItem(item: Any) {
        menu.append(item)
    }
    
    func open() {
        print("Pizzeria is open!")
    }
    
    func close() {
        print("Pizzeria is closed!")
    }
}

let pizzeria = Pizzeria()

let pizza = Pizza(price: 12.99, crustType: "Thin Crust", toppings: [.cheese, .tomatoes], pizzaType: .margherita)
let fries = FrenchFries(price: 5.99, size: "Large")

pizzeria.addMenuItem(item: pizza)
pizzeria.addMenuItem(item: fries)

pizzeria.open()
pizzeria.close()

func subtractNumbers(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func subtractNumbers(_ a: Double, _ b: Double) -> Double {
    return a - b
}

let resultInt = subtractNumbers(10, 5)
let resultDouble = subtractNumbers(10.5, 3.2)

print("Result of subtracting 5 from 10: \(resultInt)")
print("Result of subtracting 3.2 from 10.5: \(resultDouble)")