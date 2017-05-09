//
//  CSUILabelViewController.swift
//  ComponentForSwift
//
//  Created by 橙子 on 2017/5/9.
//  Copyright © 2017年 Orange. All rights reserved.
//

import UIKit

class CSUILabelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.prepareForView()
    }
    
    private func prepareForView() {
        
        self.view.backgroundColor = UIColor.white
        
        for i in 1...3 {
            let label = UILabel.init(frame: CGRect.init(x: 10, y: 50 + i * 40, width: 150, height: 30))
            
            switch i {
            case 1:
                label.text = "This is a label,这是一个基础label"
            case 2:
                label.textColor = UIColor.darkText
                label.font = UIFont.systemFont(ofSize: 12)
                label.textAlignment = NSTextAlignment.left
                label.text = "这是一个自定义label,这是一个基础label"
                label.numberOfLines = 0
                
            default:
                break
            }
            
            self.view.addSubview(label)
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
