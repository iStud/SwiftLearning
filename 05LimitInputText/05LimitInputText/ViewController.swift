//
//  ViewController.swift
//  05LimitInputText
//
//  Created by bk.xiong on 2018/9/10.
//  Copyright © 2018年 xiongbk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {
    @IBOutlet weak var textLengthLabel: UILabel!
    
    @IBOutlet weak var inputTextView: UITextView!
    
    // 完成输入
    @IBAction func doneBtnClick(_ sender: UIBarButtonItem) {
        
        print(#function)
    }
    
    
    // 保存
    @IBAction func saveBtnClick(_ sender: UIBarButtonItem) {
        
        print(#function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.inputTextView.delegate = self
        
    }

    // 回收键盘
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    // MARK: UITextViewDelegate
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        print(#function)
        // 清空提示语
        textView.text = nil;
    }
    
    func textViewDidChange(_ textView: UITextView) {
        
        print(#function)
        let currentLength = textView.text.count
        print(currentLength)
        
        self.textLengthLabel.text = "字数:\(currentLength)"
        
        if  currentLength < 140 {
            
            self.textLengthLabel.textColor = UIColor.lightGray
            
        }else{
            
            self.textLengthLabel.textColor = UIColor.red
        }
        
    }
    
    
}

