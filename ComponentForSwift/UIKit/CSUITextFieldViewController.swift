//
//  CSUITextFidleViewController.swift
//  ComponentForSwift
//
//  Created by 童玉龙 on 2018/1/23.
//  Copyright © 2018年 Orange. All rights reserved.
//

import UIKit

class CSUITextFieldViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        // Do any additional setup after loading the view.
        let textField = UITextField.init(frame: CGRect.init(x: 20, y: 100, width: 300, height: 44))
        textField.placeholder = "请输入姓名"
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.borderStyle = UITextBorderStyle.line
        
        self.view.addSubview(textField)

        
        let textField2 = UITextField.init(frame: CGRect.init(x: 20, y: 160, width: 300, height: 44))
        textField2.placeholder = "请输入姓名"
        textField2.font = UIFont.systemFont(ofSize: 15)
        textField2.borderStyle = UITextBorderStyle.roundedRect
        textField2.clearButtonMode = UITextFieldViewMode.always
        let leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 10, height: 10))
        textField2.leftView = leftView
        textField2.leftViewMode = UITextFieldViewMode.always
        self.view .addSubview(textField2)
        
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
