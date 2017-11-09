//
//  CSEnumViewController.swift
//  ComponentForSwift
//
//  Created by 橙子 on 2017/5/19.
//  Copyright © 2017年 Orange. All rights reserved.
//

import UIKit

enum CSDirection : Int{
    case top = 0
    case left
    case bottom
    case right
}

enum CSBarCode {
    case upc(Int,Int,Int,Int)
    case QRCode(String)
}

class CSEnumViewController: CSBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let topDiredtion = CSDirection(rawValue: 0)
        print(topDiredtion!)
        
        let direction = CSDirection.top
        switch direction {
        case .top:
            NSLog("direction.top")
        default:
            NSLog("direction.Others")
        }
        
        var productBarcode = CSBarCode.upc(2, 4, 6, 8)
        
        switch productBarcode {
        case .upc(let one, let two, let three, let four)://提取枚举值为常亮
            print("UPC:\(one),\(two),\(three),\(four)")
        default:
            break;
        }
        
        print(productBarcode)
        productBarcode = CSBarCode.QRCode("1232145415")
        switch productBarcode {
        case let .upc(one, two, three, four)://如果一个枚举成员的所有关联值都被提取为常量，或者都被提取为变量，为了简洁，你可以只在成员名称前标注一个let或者var
            print("UPC:\(one),\(two),\(three),\(four)")
        case let .QRCode(codeString) :
            print("QRCode:\(codeString)")
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
