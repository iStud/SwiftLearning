
let value:Float = 4

let label = "The width is"
let width = 94
let widthLabel = label + String(width)


// 使用 \() 拼接字符串
let apples : Float = 3
let oranges :Float = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges)pieces of fruits"

// 字典
var shoppingList = ["catfish","water","tulips","bluePaint"]

shoppingList[1] = "bottle of water"

var occupations = [
    "Maloclm" :"Captain",
    "Kaylee":"Mechanic",
]

occupations["Jayne"] = "Public Relations"

// 空的数组
let emptyArray = [String]()

// 空的字典
let empthyDictionary = [String:Float]()


// for in 循环遍历此数组
let individualScores = [75,43,103,87,12]
var teamScore = 0
for score in individualScores {
    
    if score > 50 {
        teamScore += 3;
    }else{
        
        teamScore += 1;
    }
}
print(teamScore)


// 值缺失 ?
// ? 代表该变量是一个可选值,这个值可能缺失

var optionalString:String? = "hello"
print(optionalString == nil)

var optionalName:String? = nil
var greeting = "hello"
if let name = optionalName {
    
    greeting = "hello \(name)"
    
}else{
    
    greeting = "what"
}


// 使用?? 处理可选值,如果可选值缺失,使用默认值

let nickName:String? = nil
let fullName:String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"


// switch 支持任意类型的数据

let vegetable = "red pepper"

switch vegetable {
    
case "celery":
    
    print("add some raisins and make ants on a log")
    
case"cucumber","watercress":
    
    print("That would make a good tea sandwich .")
    
case let x where x.hasSuffix("pepper"):
    
    print("Is it a spicy \(x)")
    
default:
    print("Everything tastes good is soup")
}

let interestingNumbers = [

    "Prime" :[2,3,5,7,11,13],
    "Fibonacci":[1,1,2,3,5,8],
    "Square":[1,4,9,16,25],
]
var largest = 0
var kinds:String? = nil

for (kind,numbers) in interestingNumbers {
    
    for number in numbers {
        
        if number > largest {
            
            kinds = kind
            largest = number
        }
    }
}

print(largest)
print(kinds)


// while 循环
var a = 2
while a<100 {
    a = a*2
}
print(a)


// repeat while
var m = 2
repeat {
    
    m = m * 2
    
} while m < 100

print(m)


// ..< 表示范围
var total = 0
for i in 0...4 {
    total += i
    
}
print(total)

// 函数和闭包
// ->  - 和 > 之间不能有空格
func greet(person:String,day:String) ->String{
    
    return "hello \(person) ,today is \(day)."
}

greet(person: "Bob", day: "Tuesday")

// 参数标签
func greets(_ person:String,on day :String) -> String{
    
    return "hello \(person),today is \( day)"
}

greets("John", on: "Wednessday")


// 使用元组来让一个函数有多个返回值
// swift 元组 把多个值合成一个复合值,元祖内的值可以是任意类型
// 有key 的元祖可以直接通过 key 或者 index 输出, 没 key 的元祖可以直接打印元祖名输出
func calculateStatistics(scores:[Int]) -> (min:Int,sum:Int,max:Int){
    
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        
        if score > max {
            max = score
        }else if score < min{
            
           min = score
        }
        sum += score
    }
    
    return(min,sum,max)
}

let statistics = calculateStatistics(scores: [5,3,100,9])
print(statistics.sum)
print(statistics.2)

// 可变参数的函数
func sumOf (numbers:Int...)->Int{
    
    var sum = 0
    for number in numbers {
        
        sum += number
        
    }
    return sum/numbers.count
    
}


sumOf(numbers: 1,1,1)

// 函数嵌套
func returnFifteen() -> Int{
    
    var y = 100
    
    func add(){
        
        y += 5
    }
    add()
    
    return y
}

returnFifteen()

// 函数作为另一个函数的返回值
func makeIncrementer() ->((Int) -> Int){
    
    func addOne(number:Int) -> Int{
        
        return 1+number
    }
    return addOne
}

var increment = makeIncrementer()
increment(7)

// 函数作为另一个函数的参数
func hasAnyMatches(list:[Int],condition:(Int)->Bool) -> Bool {
    
    for item in list {
        
        if condition(item) {
            
            return true
        }
    }
    
    return false
}

func lessThanTen(number:Int) -> Bool{
    
    return number < 10
}

var numbers = [20,19,23,12]
hasAnyMatches(list: numbers, condition:lessThanTen)


// 闭包:一段能之后被调用的代码
// in 是 参数,返回值类型 和 闭包函数体的分界线
// 闭包类似嵌套函数

/*
 
 闭包格式
 {
    (参数) -> 返回值类型  in
    函数体
 }
 
 
 */

let studname = {
    print("my name is bk.x")
    
}
studname()



let calAdd:(Int,Int)->(Int) = {
    (a:Int,b:Int) -> Int in
    return a + b
}
print(calAdd(100,150))


// 闭包可以根据上下文推断 参数和返回值的类型
let calAdd2:(Int,Int) -> Int = {
    
    a,b in
    return a+b
}
print(calAdd2(1,2))

// 没有参数的闭包 可以省略 in
let calAdd3:()->Int = {
    
    return 10
}

print(calAdd3())


// 闭包起别名
typealias myBlock = (String) -> String

let testBlock:myBlock = {
    
    (a:String) -> String in
    
    return a
}

testBlock("123")

// sorted 方法
let names = [11, 7, 3, 2, 10]


// 如果第一个数比第二个数大,则在新的数组中第一个数出现在第二个数之前

func backwards(s1: Int, s2: Int) -> Bool {
    return s1 < s2
}
var reversed = names.sorted(by: backwards)

print(reversed)

// 尾随闭包
// 函数的最后一个最后一个参数,写在函数的括号之后的闭包表达式

// 对象和类
class Shape{
    
    var numberOfSides = 0
    
    func simpleDescription() -> String {
        
        return "A shape with\(numberOfSides) sides ."
    }
    
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()


// 使用 init 创建一个构造器
// 类一创建就拥有某些属性
class NameShape{
    
    var numberOfSides:Int = 0
    var name : String
    
    init(name:String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        
        return "A shape with \(numberOfSides) sides"
    }
    
}

let nameShape = NameShape.init(name: "bk.x")
nameShape.numberOfSides = 100
nameShape.simpleDescription()


// 子类重写父类的方法
class Square:NameShape{
    
    var sideLength : Double
    
    init(sideLength:Double,name:String) {
        
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        
        return "A square with sides of length \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

// get set 方法
class EquilateralTriangle:NameShape{
    
    var sideLength:Double = 0.0
    
    init(sideLength:Double,name:String) {
        
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter :Double{
        
        get{
            
            return 3.0 * sideLength
        }
        
        set{
            
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        
        return "An equilateral triagle with sides of length \(sideLength)."
    }
    
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")

print(triangle.perimeter)

triangle.perimeter = 9.9

print(triangle.sideLength)












