//
//  ViewController.swift
//  Rainboo
//
//  Created by 安藤　慶子 on 2015/02/19.
//  Copyright (c) 2015年 安藤　慶子. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rainboo1: UIImageView!
    @IBOutlet weak var rainboo2: UIImageView!
    @IBOutlet weak var rainboo3: UIImageView!
    
    @IBOutlet weak var countLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        rainboo1.hidden = true
        rainboo2.hidden = true
        rainboo3.hidden = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTouched(sender: AnyObject) {
        println("ボタン押された")
        
        if rainboo1.hidden == true {
            // 表示する
            rainboo1.hidden = false
            showWithAnimation(rainboo1)
        }
        else {
            rainboo1.hidden = true
        }
        
        countRainboo()
    }
    
    func countRainboo() {
        var count = 0
        if rainboo1.hidden == false {
            count++
        }
        if rainboo2.hidden == false {
            count++
        }
        if rainboo3.hidden == false {
            count++
        }


        
        println("いま開いているのは\(count)本です")
        countLabel.text = "\(count)"
        
    }

    @IBAction func button2Touched(sender: AnyObject) {
        println("ボタン押された")
        
        if rainboo2.hidden == true {
            rainboo2.hidden = false
            showWithAnimation(rainboo2)
        }
        else {
            rainboo2.hidden = true
        }
        
        countRainboo()
    }
    
    @IBAction func button3Touched(sender: AnyObject) {
        println("ボタン押された")
        
        if rainboo3.hidden == true {
            rainboo3.hidden = false
            showWithAnimation(rainboo3)
        }
        else {
            rainboo3.hidden = true
        }
        
        countRainboo()
    }

    
    
    
    // アニメーションつきで傘を開くメソッド
    private func showWithAnimation(imageView: UIImageView) {
        
        // 初期状態書く
        imageView.alpha = 0
        imageView.transform = CGAffineTransformMakeRotation(CGFloat(0*M_PI/180))
       
        
        UIView.animateWithDuration(0.3,
            animations: { () -> Void in
                // アニメーションの最後の状態を書く
                imageView.alpha = 1
                 imageView.transform = CGAffineTransformMakeRotation(CGFloat(60*M_PI/180))
        })
    }
    
}



