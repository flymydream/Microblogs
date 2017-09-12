//
//  ProfileViewController.swift
//  Microblogs
//
//  Created by hero on 2017/9/8.
//  Copyright © 2017年 hero. All rights reserved.
//

import UIKit

class ProfileViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1.判断用户是否登录
        if !isLogin
        {
            visitorView?.setupVisitorInfo(imageName:"visitordiscover_image_profile" , title: "登录后,你的微博、相册、个人资料会显示在这里，展示给别人")
            return
        }

    }



  

}
