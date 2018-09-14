//
//  ViewController.swift
//  07FlipCard
//
//  Created by bk.xiong on 2018/9/14.
//  Copyright © 2018年 xiongbk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flipCountsLabel: UILabel!
    
    var flipCounts = 0 {
        
        didSet{
            
            flipCountsLabel.text = "FlipCounts:\(flipCounts)"
        }
    }
    
    
    // 连线的顺序影响它在数组中的顺序.
    @IBOutlet var flipButton: [UIButton]!
    
    // 创建对应数组的时候需要按照连线的顺序进行创建
    let emjiArr = ["👻","🎃","👻","🎃"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func flipBtnClick(_ sender: UIButton) {
        
        
        let currentBtnIndex = flipButton.index(of: sender)!
        let emojiName = emjiArr[currentBtnIndex]
        changeFlipBtnEmoji(emojiName: emojiName , button: sender)
        
    }
    
    func changeFlipBtnEmoji(emojiName:String , button:UIButton) {
        
        print("emojiName\(emojiName)")
        
        if button.currentTitle == emojiName {
            
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            flipCounts = flipCounts + 1
            
        }else {
            
            button.setTitle(emojiName, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            flipCounts = flipCounts + 1
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

