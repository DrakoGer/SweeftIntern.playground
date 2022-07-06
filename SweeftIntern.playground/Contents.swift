//1.     დაწერეთ ფუნქცია, რომელსაც გადაეცემა ტექსტი  და აბრუნებს პალინდრომია თუ არა. (პალინდრომი არის ტექსტი რომელიც ერთნაირად იკითხება ორივე მხრიდან).

func isPalindrome(_ string: String) -> Bool {
    let reversed = String(string.lowercased().reversed())

    if string.lowercased() == reversed {
        return true
    } else {
        return false
    }
}

isPalindrome("Rotator")
isPalindrome("Rats live on no evil star")
isPalindrome("Hello, world")

//2. გვაქვს 1,5,10,20 და 50 თეთრიანი მონეტები. დაწერეთ ფუნქცია, რომელსაც გადაეცემა თანხა (თეთრებში) და აბრუნებს მონეტების მინიმალურ რაოდენობას, რომლითაც შეგვიძლია ეს თანხა დავახურდაოთ.

var coins = [1, 5, 10, 20, 50]

func minSplit(_ money: Int, _ cents: [Int]) -> Int {
    var centsNeed = [Int]()
    var sum = money

    for i in cents.sorted(by: > ) {
        while sum - i >= 0 {
            centsNeed.append(i)
            sum -= i
            
            if sum == 0 {
                break
            }
        }
    }
    print(centsNeed)
    
    return centsNeed.count
}

minSplit(120, coins)

//3.     მოცემულია მასივი, რომელიც შედგება მთელი რიცხვებისგან. დაწერეთ ფუნქცია რომელსაც გადაეცემა ეს მასივი და აბრუნებს მინიმალურ მთელ რიცხვს, რომელიც 0-ზე მეტია და ამ მასივში არ შედის.

var integersArray = [1, 2, 3, 4, 5, 7, 8, 13, 15]

func notContains(array: [Int]) -> Int {
    var intArray = [Int]()
    
    for i in 0...array.max()! {
        if !array.contains(i) && i > 0 {
            intArray.append(i)
        }
    }
    return intArray.sorted(by: <).first!
}

notContains(array: integersArray)

//4. მოცემულია String რომელიც შედგება „(„ და „)“ ელემენტებისგან. დაწერეთ ფუნქცია რომელიც აბრუნებს ფრჩხილები არის თუ არა მათემატიკურად სწორად დასმული.

//===

//5. გვაქვს n სართულიანი კიბე, ერთ მოქმედებაში შეგვიძლია ავიდეთ 1 ან 2 საფეხურით. დაწერეთ ფუნქცია რომელიც დაითვლის n სართულზე ასვლის ვარიანტების რაოდენობას.

//===

//6. დაწერეთ საკუთარი მონაცემთა სტრუქტურა, რომელიც საშუალებას მოგვცემს O(1) დროში წავშალოთ ელემენტი.

//===
