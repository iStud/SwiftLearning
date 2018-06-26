// 1.通过构造函数创建一个空数组
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items")

someInts.append(3)
someInts = []


// 2. 创建一个带有默认值的数组
var threeDoubles = Array(repeating:0.0,count:3)
// threeDoubles 是一个double类型的数组,等价于 [0.0,0.0,0.0]

//3. 通过两个数组相加创建一个数组
var anotherThreeDoubles = Array(repeating:2.5,count:3)

var sixDoubles = threeDoubles + anotherThreeDoubles

// 4.用数组字面量构造数组
var shoppingList:[String] = ["Eggs","Milk"]
var shoppingLists:[String] = ["eggs","milk"]

//5.访问和修改数组
print("the shopping list contins \(shoppingList.count) items")

if shoppingList.isEmpty {
    print("the shopping list is empty")
}else{
    
    print("the shopping list is not empty")
}

// 6. 给数组添加项
shoppingList.append("flour")
shoppingList += ["Baking Powder"]
shoppingList += ["chocolate spread","cheese","butter"]

// 7.获取数据
var firstItem = shoppingList[0]

// 8.修改数据值
shoppingList[0] = "six eggs"
shoppingList[4...6] = ["bananas","apples"]
shoppingList.insert("maple syrup", at: 0)
shoppingList.remove(at: 0)
shoppingList.count
shoppingList.removeLast()
shoppingList.count

// 数组遍历
for item in shoppingList {
    
    print(item)
}
// 需要数据项和索引值的遍历
for (index ,value) in shoppingList.enumerated() {
    
    print("Item \(String(index + 1)):\(value)")
}

// 集合
// 通过构造器创建集合
var letters = Set<Character>()
print("letters is of type set<character>  with \(letters.count) items.")
letters.insert("a")
letters = []

// 用数组字面量创建集合
var favoriteGeners: Set<String> = ["rock","clsssical","hip hop"]

print("i have \(favoriteGeners.count) favorite music genres")

if favoriteGeners.isEmpty {
    print("as far as music goes , i'm not picky")
}else{
    print("i have particular music preferences")
}

favoriteGeners.insert("jazz")
favoriteGeners.remove("Rock")

if favoriteGeners.contains("hip hop") {
    
    print("Yes")
}else{
    print("NO")
}

// 遍历集合
for geners in favoriteGeners {
    
    print("\(geners)")
}

// 集合的操作,交并补
let oddDigits:Set = [1,3,5,7,9]
let evenDigits:Set = [0,2,4,6,8]
let singleDigitPrimeNumber:Set = [2,3,5,7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumber).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumber).sorted()

