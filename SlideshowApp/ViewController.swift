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
    var resume:Bool=true
    var timer:Timer?
    var index:Int=0
    // 画像リスト
    let images:[UIImage] = [
        UIImage(named:"first.PNG")!,
        UIImage(named:"second.PNG")!,
        UIImage(named:"third.PNG")!
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagePanel.image = self.images[index]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // インデックスを増分しながら表示
    func slideShow(){
        if self.resume{
            // インデックスをリスト数まで増分
            manageIndex(1)
            self.imagePanel.image = images[index]
        }
    }
    
    func manageIndex(_ param:Int){
        self.index = self.index+(param)
        if self.index > self.images.count-1{
            self.index -= self.images.count
        }else if self.index < 0 {
            self.index += self.images.count
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let singleImageViewController = segue.destination as! SingleImageViewController
        self.resume = false
        singleImageViewController.image = self.images[index]
    }
    
    /*
     ButtonActions
     */
    @IBAction func resume(_ sender: Any) {
        if timer != nil{
            self.resume = !resume
        }else{
            timer = Timer.scheduledTimer(timeInterval: 2.0, target:self,selector: #selector(slideShow),userInfo:nil, repeats: true)
        }
    }
    @IBAction func `return`(_ sender: Any) {
        manageIndex(-1)
        self.imagePanel.image = images[index]
    }
    @IBAction func proceed(_ sender: Any) {
        manageIndex(1)
        self.imagePanel.image = images[index]
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        self.resume = true
    }
    // タッチをしたらスライドを停止する
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        for touch: UITouch in touches{
            let tag = touch.view!.tag
            switch tag {
            case 0:
                self.resume = false
            default:
                break
            }
        }
    }
}

