import Foundation


//1. გვაქვს 1,5,10,20 და 50 თეთრიანი მონეტები. დაწერეთ ფუნქცია, რომელსაც გადაეცემა თანხა (თეთრებში) და აბრუნებს მონეტების მინიმალურ რაოდენობას, რომლითაც შეგვიძლია ეს თანხა დავახურდაოთ.

func minimumCoins(amount: Int) -> Int {
    let coins = [50, 20, 10, 5, 1]
    var numCoins = 0
    var amount = amount
    for coin in coins {
        numCoins += amount / coin
        amount %= coin
    }
    return numCoins
}

minimumCoins(amount: 100)

//2. დაწერეთ ფუნქცია რომელიც დააჯამებს ციფრებს ორ რიცსხვს შორის.
//   მაგალითად გადმოგვეცემა 19 და 22. მათ შორის ციფრების ჯამი იქნება :
//   // 19, 20, 21, 22
//   // (1 + 9) + (2 + 0) + (2 + 1) + (2 + 2) = 19
func sumOfDigits(start: Int, end: Int) -> Int {
    var sum = 0
    for i in start...end {
        let digits = String(i).map { Int(String($0))! }
        sum += digits.reduce(0, +)
    }
    return sum
}

sumOfDigits(start: 7, end: 8)
//
//   sumOfDigits(7, 8) ➞ 15
//   sumOfDigits(17, 20) ➞ 29
//   sumOfDigits(10, 12) ➞ 6

//3. მოცემულია String რომელიც შედგება „(" და „)" ელემენტებისგან. დაწერეთ ფუნქცია რომელიც აბრუნებს ფრჩხილები არის თუ არა მათემატიკურად სწორად დასმული.

func isProperly(sequence: String) -> Bool {
    var stack: [Character] = []
    for c in sequence {
        if c == "(" {
            stack.append(c)
        } else if c == ")" {
            if stack.isEmpty || stack.popLast() != "(" {
                return false
            }
        }
    }
    return stack.isEmpty
}

isProperly(sequence: "(()())(()())(())")

//5. გადმოგეცემათ მთელი რიცხვი N. დაწერეთ ფუნქცია რომელიც დაითვლის რამდენი 0ით ბოლოვდება N! (ფაქტორიალი)
//     შენიშვნა 1000! შედგება 2568 სიმბოლოსაგან.
//
func zeros(N: Int) -> Int {
    var count = 0
    for i in 1...N {
        var num = i
        while num % 5 == 0 {
            count += 1
            num /= 5
        }
    }
    return count
}

zeros(N: 7)
//     example:
//     zeros(N: 7) ➞ 1
//     zeros(N: 12) ➞ 2
//     zeros(N: 490) ➞ 120


