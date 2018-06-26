// 创建一个空字典
var nameOfIntegers = [Int:String]()

nameOfIntegers[16] = "sixteen"

// 用字典字面量创建字典
var airports:[String:String] = ["XYZ":"Toronto Pearson","DUB":"Dublin"]

//访问和修改字典
print("the dictionary of airports contains \(airports.count) items")

if airports.isEmpty {
    
    print("The airports dictingary is empty")
}else{
    
    print("not empty")
}

airports["LHR"] = "LonDon"
airports["LHR"] = "London Heathrow"

// updateValue 会返回更新前的值
if let oldValue = airports.updateValue("Dublin Airport",forKey:"DUB") {
    
    print("\(oldValue)")
}

if let airportName = airports["DUB"] {
    
    print("\(airportName)")
}else{
    
    print("not in the dictionary")
}


airports["APL"] = "Apple Internation"

airports["APL"] = nil

if let removeValue = airports.removeValue(forKey:"DUB") {
    print("\(removeValue)")
}else{
    print("NOT CONTAIN")
}

// 字典遍历
for (airportsCode,airportName) in airports {
    
    print("\(airportsCode):\(airportName)")
}

// 通过key 遍历
for airportsCode in airports.keys {
    
    print("\(airportsCode)")
}
for airportName in airports.values {
    
    print("\(airportName)")
}


let airportCodes = [String](airports.keys)


let airportNames = [String](airports.values)

