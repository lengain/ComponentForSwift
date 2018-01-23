//
//  CSUIViewViewController.swift
//  ComponentForSwift
//
//  Created by 橙子 on 2017/5/9.
//  Copyright © 2017年 Orange. All rights reserved.
//

import UIKit

class CSUIViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.self.prepareFotView()
        self.prepareForView()
    }
    
    private func prepareForView () {
        self.view.backgroundColor = UIColor.white
        for i in 1...3 {
            let view = UIView.init(frame: CGRect.init(x: 100, y: i * 110 + 10, width: 100, height: 100))
            self.view.addSubview(view)
            
            switch i {
            case 1:
                view.backgroundColor = UIColor.white
                view.layer.borderWidth = 1
                view.layer.borderColor = UIColor.red.cgColor
            case 2:
                view.backgroundColor = UIColor.green
                let oraginRect = view.frame
                UIView.animate(withDuration: 1, animations: {
                    view.frame = CGRect.init(origin: oraginRect.origin, size: CGSize.init(width: 10, height: 10))
                }, completion: { (completion) in
                    if completion {
                        UIView.animate(withDuration: 1, animations: {
                            view.frame = oraginRect
                        })
                    }
                })
            case 3:
                let customLayer = CATextLayer.init()
                customLayer.string = "hhhh"
                customLayer.frame = CGRect.init(x: 0, y: 0, width: 100, height: 20)
                customLayer.fontSize = 12;
                customLayer.font = UIFont.systemFont(ofSize: 12)
                customLayer.foregroundColor = UIColor.red.cgColor
                view.layer.addSublayer(customLayer)
            default:
                break
            }
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
