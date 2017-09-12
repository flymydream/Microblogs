//
//  HomeViewController.swift
//  Microblogs
//
//  Created by hero on 2017/9/8.
//  Copyright © 2017年 hero. All rights reserved.
//

import UIKit

class HomeViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1.判断用户是否登录
        if !isLogin
        {
            visitorView?.setupVisitorInfo(imageName:nil , title: "关注一些人，回这里看看有什么惊喜")
            return
        }
      
    }
   

}
