import UIKit

var str = "Hello, playground"

func fizzbuzz(number: Int) -> String {
    if number % 3 == 0 && number % 5 == 0 {
        return "FizzBuzz"
    } else if number % 3 == 0 {
        return "Fizz"
    } else if number % 5 == 0 {
        return "Buzz"
    } else {
        return "\(number)"
    }
}
print(fizzbuzz(number: 9))
print(fizzbuzz(number: 15))
print(fizzbuzz(number: 10))
print(fizzbuzz(number: 13))

