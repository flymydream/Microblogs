//
//  MainTabViewController.swift
//  Microblogs
//
//  Created by hero on 2017/9/8.
//  Copyright © 2017年 hero. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = UIColor.orange
        addChildViewControllers()
        tabBar.addSubview(composeButton)
       
    }

    //swift可以通过命名空间 解决冲突问题 推荐使用cocopoads管理第三方库
    //添加所有的控制器
    func addChildViewControllers(){
        
//        //根据json动态加载控制器
//        guard let filePath = Bundle.main.path(forResource: "MainVCSettings.json", ofType: nil) else {
//            NJLog(message: "JSON文件不存在")
//            return
//        }

        //try！告诉系统一定不会有异常，也就是可以不通过do catch来处理，一但发生异常就会崩溃
         //try?告诉系统可能有错也可能没有错，没有的话系统会自动将结果包装成一个可选的类型给我们，如果有错系统返回nil，可以不通过do catch来处理

    
        
        
        
        
        //通过类创建控制器
       
//        addChildViewController(childController: HomeViewController(), title: "首页", imageName: "tabbar_home")
//        addChildViewController(childController: MessageViewController(), title: "消息", imageName: "tabbar_message_center")
//        addChildViewController(childController: DiscoverViewController(), title: "发现", imageName: "tabbar_discover")
//        addChildViewController(childController: ProfileViewController(), title: "我", imageName: "tabbar_profile")
    
        //MARK:-  通过字符串创建类
        addChildViewController(childControllerName: "HomeViewController", title: "首页", imageName: "tabbar_home")
        addChildViewController(childControllerName: "MessageViewController", title: "消息", imageName: "tabbar_message_center")
        
        addChildViewController(childControllerName: "MiddleViewController", title: "", imageName: "")
        
        addChildViewController(childControllerName: "DiscoverViewController", title: "发现", imageName: "tabbar_discover")
        addChildViewController(childControllerName: "ProfileViewController", title: "我", imageName: "tabbar_profile")
    }
    

    func addChildViewController(childControllerName: String,title: String,imageName: String){
        
//        guard 条件表达式 else {
//            执行的语句
//            只有条件为假 才会执行
//            return 这句一定要写
//        }  解决可选绑定容易形成的嵌套
//   动态获取命名空间
        guard let name = Bundle.main.infoDictionary!["CFBundleName"] as? String else {
            
            NJLog(message:"获取命名空间失败")
            return
        }
        
        let cls: AnyClass? = NSClassFromString(name + "." + childControllerName)
        
        guard let typeCls = cls as? UITableViewController.Type else {
           NJLog(message: "cls不能当做UITableViewController")
           return
        }
    
        //通过class创建对象
        let childController = typeCls.init()

        childController.title = title;
        childController.tabBarItem.image = UIImage(named:imageName)
        childController.tabBarItem.selectedImage = UIImage(named:imageName + "_highlighted")
        
        //包装一个导航控制器
        let nav = UINavigationController(rootViewController:childController)
        
        addChildViewController(nav)
    }
    
    
    //MARK:-创建中间的按钮
     var composeButton: UIButton  {

    let btn = UIButton()
        
    let rect = btn.frame
    let width = tabBar.bounds.width/CGFloat(childViewControllers.count)
    
    btn.frame = CGRect(x:2*width,y: 0,width: width,height: rect.height)
    
   
    btn.setImage(UIImage(named: "tabbar_compose_icon_add"), for: UIControlState.normal)
    btn.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), for: UIControlState.highlighted)
    btn.setBackgroundImage(UIImage(named: "tabbar_compose_button"), for: UIControlState.normal)
    btn.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), for: UIControlState.highlighted)
    //大小
    btn.sizeToFit()
    return btn
    }
   

}












