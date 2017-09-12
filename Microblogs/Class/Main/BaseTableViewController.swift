//
//  BaseTableViewController.swift
//  Microblogs
//
//  Created by hero on 2017/9/11.
//  Copyright © 2017年 hero. All rights reserved.
//

import UIKit

class BaseTableViewController: UITableViewController {
    var isLogin = false
    var visitorView: VisitorView?
    override func loadView() {
        //标记用户登录状态
//        super.viewDidLoad()
        isLogin ? super.loadView() : setupVisitorView()
    }
    private func setupVisitorView()
    {
        visitorView = VisitorView.visitorView();
        visitorView?.backgroundColor = UIColor(white:233/255.0, alpha:1.0)
        view = visitorView
        
    }
    
}
