//
//  ViewController.swift
//  闭包
//
//  Created by bk.xiong on 2018/6/28.
//  Copyright © 2018年 xiongbk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //一般形式
        let calAdd:(Int,Int)->(Int) = {
            (a:Int,b:Int) -> Int in
            return a + b
        }
        print(calAdd(100,150))
        
        
        // swift 可以根据闭包上下文推断参数和返回值的类型
        let calAdd1:(Int,Int)-> Int = { a,b in
            
            return a+b
        }
        print(calAdd1(10,10))
        
        // 单行表达式闭包隐式返回 闭包函数体中只有一个表达式,即,a+b
        let callAdd2:(Int,Int) -> Int = {(a,b) in a+b}
        print(callAdd2(2,4))
        
        // 闭包没有参数可以直接省略 in
        let callAdd3:() -> Int = { return 12+1 }
        print("\(callAdd3())")
        
        // 闭包起别名
        typealias addBlock = (Int , Int) -> Int
        
        let addTest:addBlock = {(c,d) in return c+d}
        
        print(addTest(100,0))
        
        
        // 尾随闭包
        // 把闭包作为函数的最后一个参数,可以省略参数标签,然后将闭包表达式写在函数调用括号后面
        func testFunction(tesBlock:()-> Void){
            
            tesBlock()
        }
        
        testFunction(tesBlock: {
            
            print("正常写法")
        })
        
        testFunction (){
            print("尾随闭包")
        }
        
        testFunction {
            
            print("去掉括号")
        }
        
        // 值捕获
       //闭包可以在其被定义的上下文中捕获常量或变量
        func captureValue(sums amount:Int) -> () -> Int{
            
            var total = 0
            func incrementer() -> Int{
                
                total += amount
                return total
            }
            
            return incrementer
        }
        
        
        // 逃逸闭包 闭包作为函数的参数,且闭包在函数返回之后在执行
        
        
    }

}

