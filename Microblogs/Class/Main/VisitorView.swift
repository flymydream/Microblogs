//
//  VisitorView.swift
//  Microblogs
//
//  Created by hero on 2017/9/11.
//  Copyright © 2017年 hero. All rights reserved.
//

import UIKit

class VisitorView: UIView {
    //转盘
    @IBOutlet weak var rotationImageView: UIImageView!
    //房子
    @IBOutlet weak var iconImageView: UIImageView!
    //文本
    @IBOutlet weak var titleLable: UILabel!
    //注册
    @IBOutlet weak var registButton: UIButton!
    //登录
    @IBOutlet weak var loginButton: UIButton!
    
    func setupVisitorInfo(imageName: String?,title: String)
    {
        //1.设置标题
        titleLable.text = title
        //2.判断是不是首页
        guard let name = imageName else
        {
        
            //执行动画
            startAnamation()
            //没有设置图标  首页
            return
        }
        //不是首页
        iconImageView.image = UIImage(named: name)
        rotationImageView.isHidden = true
    }
    
    
    
    private func startAnamation()
    {
       //1.创建动画
        let anim = CABasicAnimation()
        anim.keyPath = "transform.rotation"
       //2.设置动画属性
        anim.toValue = 2*Double.pi
        anim.duration = 5.0
        anim.repeatCount = MAXFLOAT
        //默认情况下只要视图消失  系统就会移除动画  不自动移除
        anim.isRemovedOnCompletion = false
       //3.将动画添加到图层上
        rotationImageView.layer.add(anim, forKey: nil)
        
    }
    
    
    
    
    
    
    class func visitorView() -> VisitorView{
       return Bundle.main.loadNibNamed("VisitorView", owner:nil, options: nil)?.last as! VisitorView
        
    }

}
