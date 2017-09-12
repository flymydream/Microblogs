//
//  MessageViewController.swift
//  Microblogs
//
//  Created by hero on 2017/9/8.
//  Copyright © 2017年 hero. All rights reserved.
//

import UIKit

class MessageViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1.判断用户是否登录
        if !isLogin
        {
            visitorView?.setupVisitorInfo(imageName:"visitordiscover_image_message" , title: "登陆后,别人评论你的微博，发给你的消息，都会在这里收到通知")
            return
        }
      
    }
   

}
