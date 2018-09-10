//
//  BackViewController.swift
//  04代理
//
//  Created by bk.xiong on 2018/8/23.
//  Copyright © 2018年 xiongbk. All rights reserved.
//

import UIKit

protocol BackViewControllerDelegate {
    
    func getValue(controller:BackViewController,value:String)

}


class BackViewController: UIViewController {
    
    @IBOutlet weak var valueTextField: UITextField!
    
    var delegate:BackViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func popClick(_ sender: UIButton) {


        if (delegate != nil) {
            
            delegate?.getValue(controller: self, value: self.valueTextField.text!)
        }
        
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
