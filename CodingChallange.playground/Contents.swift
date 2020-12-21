import Foundation


//MARK:- • Add arithmetic operators (add, subtract, multiply, divide) to make the following expressions true. You can use any parentheses you’d like.
//2.25 4.50 1.25 5 = 27

// (2.25 + 4.50) / 1.25 * 5 = 27
func addArithmetic() -> String {
    var storage = ""
    
    enum Arithmetics: String, CaseIterable {
        case multiply = "*"
        case devide = "/"
        case plus = "+"
        case minus = "-"
    }
    
    for firstState in Arithmetics.allCases {
        for secondState in Arithmetics.allCases {
            for thirdState in Arithmetics.allCases {
                if (2.25 + 4.50) / 1.25 * 5 == 27 {
                    storage = "(2.25 \(firstState.rawValue) 4.50) \(secondState.rawValue) 1.25 \(thirdState.rawValue) 5 = 27"
                }
                if "2.25 \(firstState) (4.50 \(secondState) 1.25) \(thirdState) 5" == "27" {
                    storage = "2.25 \(firstState) (4.50 \(secondState) 1.25) \(thirdState) 5 = 27"
                }
                if "2.25 \(firstState) 4.50 \(secondState) (1.25 \(thirdState) 5)" == "27" {
                    storage = "2.25 \(firstState) 4.50 \(secondState) (1.25 \(thirdState) 5) = 27"
                }
            }
        }
    }
    return storage
}
print(addArithmetic())


//MARK:- • Write a method to determine whether two strings are anagrams or not (examples of anagrams: debit card/bad credit, punishments/nine thumps, etc.) refrain from using ordinary loops, please base your solution completely on Higher-order functions

func CheackForAnagram(_ firstString: String, _ secondString: String)-> Bool {
    let string1 = firstString.lowercased().sorted()
    let string2 = secondString.lowercased().sorted()
    if string1 == string2 { return true }
    return false
}

CheackForAnagram("debit card","bad credit")

//MARK:- • Write a method to generate nth Fibonacci number using two different approaches

// Iterative approach

func fibonacciNumber(_ num: Int) -> Int {
    var valueA = 1
    var ValueB = 1
    guard num > 1 else { return valueA }
    
    (2...num).forEach { _ in
        (valueA, ValueB) = (valueA + ValueB, valueA)
    }
    return valueA
}

fibonacciNumber(9)


// Recursive approach

func recursiveFibonacci(_ num: Int) -> Int {
    guard num > 1 else { return num }
    return recursiveFibonacci(num - 1 ) + recursiveFibonacci( num - 2 )
}

recursiveFibonacci(9)
