// 元组：多个值组成一个复合值
// 元祖内的值是任意类型的。
let http404Error = (404,"Not Found")
let (statusCode,statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

// 忽略部分元组值
let (justTheStatusCode,_) = http404Error
print("The status code is \(justTheStatusCode)")

// 定义元组的时候


