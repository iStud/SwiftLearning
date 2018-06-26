
// 结构体
struct Resolution{
    var width = 0
    var height = 0
}

// 类
class VideoMode{
    
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name : String?
    
}

// 生成实例
let someResolution = Resolution()
let someVideoMode = VideoMode()

// 属性访问
print("the width of someResolution is \(someResolution.width)")
print("the width of someVideoMode is \(someVideoMode.resolution.width)")

// 使用点语法改变属性的值
someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")


// 结构体是值类型
let  hd = Resolution(width:1920,height:1080)
var cinema = hd
cinema.width = 2048
print("cinma is now \(cinema.width) piexels wide")
print("hd is still \(hd.width) pixels wide")


// 枚举是值类型
enum CompassPoint{
    
    case North ,South ,East , West
}
var currentDirection = CompassPoint.West
let rememberedDirection = currentDirection
currentDirection = .East
if rememberedDirection == .West {
    
    print("the remembered direction is still .West")
}

// 类是引用类型
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let  alsonTenEighty = tenEighty
alsonTenEighty.frameRate = 30.0

print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")

// 恒等运算符
if tenEighty === alsonTenEighty {
    print("tenEingty and alsoTenEitghty refer to the same Resolution instance")
}

class DataImporter{
    
    var fileName = "data.text"
    
}

class DataManager{
    
    lazy var importer = DataImporter()
    var data = [String]()
    
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
print(manager.importer.fileName)











