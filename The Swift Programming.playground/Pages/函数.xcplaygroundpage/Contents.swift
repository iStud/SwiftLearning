// 函数
func greet(person:String) -> String{
    
    let geeting = "hello " + person + "!"

    return geeting
}

print(greet(person: "lihao"))

// 无参函数
func sayHellWorld() -> String{
    
    return "Hello world"
}

print(sayHellWorld())

//多参函数
func greet(peson:String,alreadGreeted:Bool) -> String{
    
    if alreadGreeted {
        return "123"
    }else{
        return greet(person: peson)
    }
}


print(greet(peson: "Tom", alreadGreeted: true))

// 无返回值函数
func goodPerson(peson:String){
    
    print(peson)
}

goodPerson(peson: "1234567")


func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

// 参数标签 和指定参数名称
func sayBy(name:String ,give bye:String) -> String{
    
    return "\(name) say \(bye)"
}

sayBy(name: "jj", give: "bk")

// 默认值参数
func  counAge(myAge:Int = 25, herAge:Int){
    
    print("我的年龄 \(myAge) 她的年龄\(herAge)")
}

// 默认参数可以不传
counAge(herAge: 27)

//可变参数




















