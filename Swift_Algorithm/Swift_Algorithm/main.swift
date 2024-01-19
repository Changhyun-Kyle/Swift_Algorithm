//
//  main.swift
//  Swift_Algorithm
//
//  Created by 강창현 on 1/18/24.
//
// MARK: - 블랙잭
//let input = readLine()!.split(separator: " ").map { Int($0)! }
//let n = input[0]
//let m = input[1]
//let cards = readLine()!.split(separator: " ").map { Int($0)! }
//
//func solution(n: Int, m: Int, cards: [Int]) -> Int {
//    var result: Int = 0
//    for i in 0..<n {
//        for j in i+1..<n {
//            for k in j+1..<n {
//                var sum: Int = 0
//                sum = cards[i] + cards[j] + cards[k]
//                if sum <= m && result <= sum {
//                    result = sum
//                }
//            }
//        }
//    }
//    return result
//}
//print(solution(n: n, m: m, cards: cards))

// MARK: - 분해합
//var input = Int(readLine()!)!
//let slice = String(input).map { Int(String($0))! }
//
//for i in 0..<n {
//    input = input - slice[i]
//}

let n = Int(readLine()!)!
var sum = 0
var result = 0

for i in 1...n {
    sum = i
    for j in String(i) {
        sum += Int(String(j))!
    }
    if sum == n {
        result = i
        break
    }
}
result == 0 ? print("0") : print("\(result)")
