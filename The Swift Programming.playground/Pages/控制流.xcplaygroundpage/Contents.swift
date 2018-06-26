// for in 循环
for index in 1...5 {
    
    print("\(index) time 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

let names = ["aa","bb","cc","dd"]
for name in names {
    
    print("\(name)")
}

let numberOfLegs = ["spider":8,"ant":6,"cat":4]

for (name,counts) in numberOfLegs {
    
    print("\(name) have \(counts)")
}


// while 循序 循环次数未知

// repeat while
// 先循环后判断
// if 语句  条件简单可能的情况比较少的情况
// switch 条件复杂 有更多的情况
let someCharter:Character = "z"
switch someCharter {
case "a":
    print("a")
case "b":
    print("b")
case "z":
    print("z")
default:
    print("123")
}

// 控制转移语句
// continue 停止本次循环,重新开始下次循环
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    
    if charactersToRemove.contains(character) {
        continue
    } else {
        puzzleOutput.append(character)
    }
}
print(puzzleOutput)

// break
// 在循环中使用break 结束循环
// 在switch中使用break 结束switch
// fallthrough贯穿

// 检查 API 的可用性
if #available(iOS 10, macOS 10.12, *) {
    // 在 iOS 使用 iOS 10 的 API, 在 macOS 使用 macOS 10.12 的 API
} else {
    // 使用先前版本的 iOS 和 macOS 的 API
}





