//
//  ViewController.swift
//  CATransactionPush
//
//  Created by 黄海燕 on 16/4/24.
//  Copyright © 2016年 huanghy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRectMake(10, 100, 320, 211)
        let imageView = UIImageView(frame:rect)
        
        let image = UIImage(named: "1.jpg")
        imageView.image = image
        self.view.addSubview(imageView)
        
        //初始化一个过渡动画实例
        let animation = CATransition()
        animation.duration = 2
        //设置动画的播放速度为由慢至快
        animation.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseOut)
        //设置动画的类型为入场动画
        animation.type = kCATransitionPush
        imageView.layer.addAnimation(animation, forKey: "Push")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

