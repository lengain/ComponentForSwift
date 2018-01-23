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
        
        for i in 1...4 {
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
            case 3:
                
                let tips : NSString = "This is a label,这是一个基础label This is a label,这是一个基础label"
                let tipsSize : CGSize = tips.boundingRect(with: CGSize.init(width: 150, height: 1000), options: [NSStringDrawingOptions.usesFontLeading,NSStringDrawingOptions.usesLineFragmentOrigin], attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 12),], context: nil).size
                label.setKheight(height: tipsSize.height)
                label.font = UIFont.systemFont(ofSize: 12)
                label.text = tips as String
                label.numberOfLines = 0
            case 4:
                let font = UIFont.systemFont(ofSize: 12)
                let paragraphStyle = NSMutableParagraphStyle.init()
                paragraphStyle.lineSpacing = font.pointSize * 0.4
                
                let attributeString = NSMutableAttributedString.init(string: "这是一个attributeLabel,可以设置行高 it can set line height.", attributes: [NSAttributedStringKey.font:font,NSAttributedStringKey.paragraphStyle:paragraphStyle]);
                
                let tipsSize = attributeString.boundingRect(with: CGSize.init(width: label.kwidth, height: CGFloat(MAXFLOAT)), options: [NSStringDrawingOptions.usesFontLeading , NSStringDrawingOptions.usesLineFragmentOrigin], context: nil)
                label.setKheight(height: tipsSize.height)
                label.numberOfLines = 0
                label.font = font;
                label.attributedText = attributeString;
                
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
