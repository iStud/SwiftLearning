//
//  ViewController.swift
//  04代理
//
//  Created by bk.xiong on 2018/8/23.
//  Copyright © 2018年 xiongbk. All rights reserved.
//

import UIKit



class ViewController: UIViewController,BackViewControllerDelegate{
    
    @IBOutlet weak var valueLabel: UILabel!
    func getValue(controller: BackViewController, value: String) {
        
        valueLabel.text = value
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnClick(_ sender: UIButton) {
        
        let backVC = BackViewController()
        backVC.delegate = self
        self.navigationController?.pushViewController(backVC, animated: true)
        
    }
    
}

