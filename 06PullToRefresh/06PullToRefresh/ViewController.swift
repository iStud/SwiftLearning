//
//  ViewController.swift
//  06PullToRefresh
//
//  Created by bk.xiong on 2018/9/10.
//  Copyright © 2018年 xiongbk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    @IBOutlet weak var refreshTableview: UITableView!
    
    let refresh = UIRefreshControl()
    var dataArr = Array<String>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        refresh.attributedTitle = NSAttributedString(string: "刷我")
        refresh.addTarget(self, action:#selector(pullRefresh), for: UIControlEvents.valueChanged)
        self.refreshTableview.addSubview(refresh)
        self.view.backgroundColor = UIColor.white
        self.refreshTableview.dataSource = self
        addData()
        self.refreshTableview.reloadData()
    }

    func addData()  {
        
        dataArr.insert("数据", at: 0)
    }
    
    @objc func pullRefresh() {
        
        print(#function)
        addData()
        refresh.endRefreshing()
        self.refreshTableview.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "reuseIdentifier")
        cell.textLabel?.text = dataArr[indexPath.row]
        return cell;
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

