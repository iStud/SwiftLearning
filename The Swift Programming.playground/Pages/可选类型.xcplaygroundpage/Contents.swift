// 可选类型用 ？表示，意思是有值或者没有值
// 举例：Int 类型构造器，可以将字符串转化为Int值，但是不是所有的字符串都可以。
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// 可以看出 convertedNumber 为可选类型 Int? 。表明可能包含值或者不包含值。

// 给可选变量赋值为 nil 来表示没有值
var serverResponseCode :Int? = 404
serverResponseCode = nil
// 非可选类型的常量和变量不能使用 nil

// 声明一个可选的常量或者变量没有赋值，会自动设置为 nil
var surveyAnswer:String?

// oc中的nil 指向一个不存在对象的指针，而swift 中的 nil 不是一个指针，表示一个确定的值，用来表示值缺失

// if 语句和强制解析
if convertedNumber != nil {
    
    print("convertedNumber contains some iteger value")
    // 当知道一个可选类型有值的时候可以使用 ！来获取值
    print("convertedNumber has an integer value of \(convertedNumber!)")
}

// 可选绑定
// 在 if 和 while 语句中判断可选类型是否有值，同时可以把可选类型中的值赋值给你一个常量或者变量
//
if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    print("\'\(possibleNumber)\' could not be converted to an integer")
}

// 隐式解析可选类型
let possibleString :String? = "an optional string"
let forcedString :String = possibleString!

let assumedString:String! = "an implicitly unwarpped optional string"
let implicitString:String = assumedString

if assumedString != nil {
    print(assumedString)
}

if let definiteString = assumedString {
    print(definiteString)
}











