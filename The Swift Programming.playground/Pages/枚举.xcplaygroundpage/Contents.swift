// 枚举
enum SomeEnumeration {
    // 放枚举定义的地方
}
// swift 的枚举成员在创建的时候不会被赋予一个默认的整型值,这些枚举成员本身就是完备的值,
// 这些值的类型已经明确定义好了,就是 CompassPoint 类型
enum CompassPoint{
    
    case north
    case south
    case east
    case west
}
// 多个成员值可以出现在同一行上,用逗号隔开
enum Planet{
    case mercury ,venus ,earth ,mars ,jupiter ,saturn ,uranus ,neptune
}

// 每个枚举定义了一个全新的类型,类型名用大写字母开头
var directionToHead = CompassPoint.west

// 使用点语法设置
directionToHead = .east

// 使用 switch 匹配单个枚举值
directionToHead = .south
switch directionToHead {
case .north:
    print("noth")
case .south:
    print("south")
case .east:
    print("east")
case .west:
    print("west")

}







