//
//  SingleImageViewController.swift
//  SlideshowApp
//
//  Created by Takakura 高倉 優介 on 2017/07/20.
//  Copyright © 2017年 DesMatsue. All rights reserved.
//

import UIKit

class SingleImageViewController: UIViewController {
    @IBOutlet weak var imagePanel: UIImageView!
    var image:UIImage? = UIImage(named:"first.PNG")
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 表示
        if let image = self.image{
            imagePanel.image = image
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
