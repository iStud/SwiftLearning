//
//  ViewController.swift
//  02Timer 使用
//
//  Created by bk.xiong on 2018/7/2.
//  Copyright © 2018年 xiongbk. All rights reserved.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

    // 计时器
    var timer:Timer!
    
    // 存储数字
    var number:Double = 0
    
    // 显示数字的label
    let numberLabel = UILabel()
    
    // 开始&结束按钮
    let   stBtn = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view .addSubview(numberLabel)
        numberLabel.text = "0"
        numberLabel.textColor = UIColor.black
        numberLabel.font = UIFont.systemFont(ofSize: 20)
        numberLabel.snp.makeConstraints { (make) in
            
            make.centerX.equalTo(self.view)
            make.top.equalTo(100)
        }
        
        // 复位按钮
        let  resetBtn = UIButton()
        self.view.addSubview(resetBtn)
        resetBtn.setTitle("复位", for:  UIControlState.normal)
        resetBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        resetBtn.backgroundColor = UIColor.orange
        resetBtn.addTarget(self, action:#selector(resetClick), for: UIControlEvents.touchUpInside)
        resetBtn.snp.makeConstraints { (make) in
            
            make.left.equalTo(self.view)
            make.bottom.equalTo(self.view.snp.bottom).offset(-150)
            make.height.equalTo(200)
            make.width.equalTo(self.view.bounds.size.width/2)
        }
        

        self.view.addSubview(stBtn)
        stBtn.setTitle("开始", for:  UIControlState.normal)
        stBtn.setTitle("暂停", for:  UIControlState.selected)
        stBtn.setTitleColor(UIColor.green, for: UIControlState.normal)
        stBtn.setTitleColor(UIColor.red, for: UIControlState.selected)
        stBtn.backgroundColor = UIColor.black
        stBtn.addTarget(self, action:#selector(stClick(button:)), for: UIControlEvents.touchUpInside)
        stBtn.snp.makeConstraints { (make) in
            
            make.top.width.height.equalTo(resetBtn)
            make.left.equalTo(resetBtn.snp.right)
        }
        
        
    }
    
    // 点击了复位
    @objc func resetClick() {
        
        if self.stBtn.isSelected {
            
            self.stBtn.isSelected = false
        }

        //销毁 归0
        self.timer.invalidate()
        self.timer = nil
        self.number = 0
        self.numberLabel.text = "0"
    }
    
    // 点击了开始或者结束
    @objc func stClick(button:UIButton) {
        
        if button.isSelected{
            
            //暂停
            self.timer.fireDate = Date.distantFuture
            
        }else{
            
            // 如果计时器已经存在了,就是暂停
            if (self.timer != nil){
                
                self.timer.fireDate = Date.distantPast
                
            }else{
                
                // 开始
                createTimer()
                
            }
            
            
        }
        
        button.isSelected = !button.isSelected
    }
    
    
    // 创建计时器
    func createTimer() {
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (Timer) in
            self.number = self.number + 0.1
            self.numberLabel.text = String(format: "%.1f", self.number)
        }
        
        self.timer.fire()
        
    }
    
    // 销毁
    func destroyTimer() {
        
        print(#function)
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

