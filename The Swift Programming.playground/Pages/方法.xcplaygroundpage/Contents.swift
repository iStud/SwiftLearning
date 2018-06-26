struct Point {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveByX(deltaX: 2.0, deltaY: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")
// 打印 "The point is now at (3.0, 4.0)"

// 类型方法
class SomeClass{
    
    class func someTypeMethod() {
        
    }
}

SomeClass.someTypeMethod()

var welcomMessage: String

// 元祖
let http404Error = (404, "Not Found")
// 分离元祖
let (statusCode, statusMessage) = http404Error

print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")
print("The status code is \(http404Error.0)")

let http200Status = (statusCode: 200, description: "OK")
print(http200Status.statusCode)


