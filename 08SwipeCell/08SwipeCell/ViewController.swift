//
//  ViewController.swift
//  08SwipeCell
//
//  Created by bk.xiong on 2018/9/17.
//  Copyright © 2018年 xiongbk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    

    @IBOutlet weak var infoView: UITableView!
    let dataArr = ["向","左","滑","我"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        infoView.delegate = self
        infoView.dataSource = self
    }
    
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "identifier")
        cell.textLabel?.text = dataArr[indexPath.row]
        return cell
    }
    
    // MARK: UITableViewDelegate
    // tableview 向左滑动
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let  repostAt = UITableViewRowAction(style: .normal, title: "转发") { (action, index) in
            
            print("转发")
        }
        repostAt.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        let commitAt = UITableViewRowAction(style: .normal, title: "评论") { (action, index) in
            
            print("评论")
        }
        repostAt.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        let collectAt = UITableViewRowAction(style: .normal, title: "收藏") { (action, index) in
            
            print("收藏")
        }
        collectAt.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        return [repostAt,commitAt,collectAt]
        
    }

}

