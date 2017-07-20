//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Takakura 高倉 優介 on 2017/07/19.
//  Copyright © 2017年 DesMatsue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /*
     MemberVariables
     */
    @IBOutlet weak var imagePanel: UIImageView!
    var resume:Bool=false
    var timer:Timer?
    var index:Int=0
    // 画像リスト
    // 作業対象

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // インデックスを増分しながら表示
    func slideShow(){
        // 作業対象
        // インデックスをリスト数まで増分
        // 作業対象
    }
    /*
     ButtonActions
     */
    @IBAction func resume(_ sender: Any) {
        if let timer = self.timer{
            self.timer=timer
            self.resume = !resume
        }else{
            timer = Timer.scheduledTimer(timeInterval: 2.0, target:self,selector: #selector(slideShow),userInfo:nil, repeats: true)
            // 画像リストを取得
            // 作業対象
        }
    }
    @IBAction func `return`(_ sender: Any) {
        self.index -= 1
    }
    @IBAction func proceed(_ sender: Any) {
        self.index += 1
    }
}

