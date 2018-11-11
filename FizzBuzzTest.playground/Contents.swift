import Foundation
import XCTest

class FizzBuzz {
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
}

var test = FizzBuzz()
print(test.fizzbuzz(number: 20))

class FizzBuzzTests: XCTestCase {
    var sut: FizzBuzz!
    
    override func setUp() {
        super.setUp()
        sut = FizzBuzz()
    }
    
    func testDivisibleBy3Fizz() {
        XCTAssertEqual(sut.fizzbuzz(number: 9), "Fizz")
    }
    
    func testDivisibleBy5Buzz() {
        XCTAssertEqual(sut.fizzbuzz(number: 10), "Buzz")
    }
    
    func testDivisibleBy15FizzBuzz() {
        XCTAssertEqual(sut.fizzbuzz(number: 15), "FizzBuzz")
    }
    
    func testNotDivisibleBy3or5() {
        XCTAssertEqual(sut.fizzbuzz(number: 4), "4")
    }
}

FizzBuzzTests.defaultTestSuite.run()
