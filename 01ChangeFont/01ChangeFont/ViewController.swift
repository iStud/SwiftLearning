//
//  ViewController.swift
//  01ChangeFont
//
//  Created by bk.xiong on 2018/7/2.
//  Copyright © 2018年 xiongbk. All rights reserved.
//  项目说明: 点击修改字体按钮可以修改 label 中文字的字体

import UIKit
import SnapKit

class ViewController: UIViewController {

    let label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(label)
        label.backgroundColor = UIColor.lightGray
        label.text = "Swift"
        label.font = UIFont.systemFont(ofSize: 50)
        label.textColor = UIColor.black
        label.snp.makeConstraints { (make) in
            
            make.top.equalTo(100)
            make.centerX.equalTo(self.view)
        }
        
        let button = UIButton()
        self.view .addSubview(button)
        button.setTitleColor(UIColor.blue, for:UIControlState.normal)
        button.setTitle("修改字体", for:UIControlState.normal)
        // button 的点击方法
        // #selector 方法的写法很是让人蛋疼
        // selector是 oc 时代的产物,所以它引用的方法前需要加 @objc,不知道以后写法还会不会再改.
//        button.addTarget(self, action: #selector(<#T##@objc method#>), for: <#T##UIControlEvents#>)
        button.addTarget(self, action:#selector(changeText(button:)), for: UIControlEvents.touchUpInside)
        button.snp.makeConstraints { (make) in
            
            make.bottom.equalTo(self.view.snp.bottom).offset(-100)
            make.centerX.equalTo(self.view)
        }
        
        // 系统支持的字体
        print(UIFont.familyNames)
        
    }
    
     @objc func changeText(button:UIButton) {
        
        
        if button.isSelected {
            
            label.font = UIFont(name: "Copperplate", size: 50)
            
        } else{
            
             label.font = UIFont(name: "Gill Sans", size: 50)
        }
        
        button.isSelected = !button.isSelected
    }
    
    
//    @objc func changeFont()  {
//
//        print(#function)
//        label.font = UIFont(name: "Savoye LET", size: 80)
//
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

