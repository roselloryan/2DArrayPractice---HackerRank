
import Foundation

let one = "1 1 1 0 0 0".components(separatedBy: " ")
let two = "0 1 0 0 0 0".components(separatedBy: " ")
let three = "1 1 1 0 0 0".components(separatedBy: " ")
let four = "0 0 2 4 4 0".components(separatedBy: " ")
let five = "0 0 0 2 0 0".components(separatedBy: " ")
let six = "0 0 1 2 4 0".components(separatedBy: " ")

let twoDArray = [one, two, three, four, five, six]

var greatestSum: Int?

for k in 0...3 {
    print("\nk: \(k)")
    
    for i in 0...3 {
        print("\ntop array: \(twoDArray[k])")
        
        var tempSum = 0
        
        let topArray = twoDArray[k]
        let bottomArray = twoDArray[k + 2]
    
        for j in 0...2 {
            print("top: \(topArray[j + i])")
            print("bottom: \(bottomArray[j + i])")
            tempSum += Int(topArray[j + i])!
            tempSum += Int(bottomArray[j + i])!
        }
        print("center: \(twoDArray[k + 1][i + 1])")
        tempSum += Int(twoDArray[k + 1][i + 1])!
        
        if greatestSum == nil {
            greatestSum = tempSum
        }
        else {
            if tempSum > greatestSum! {
                greatestSum = tempSum
            }
        }
    }
}
print("greatest sum: \(greatestSum!)")
