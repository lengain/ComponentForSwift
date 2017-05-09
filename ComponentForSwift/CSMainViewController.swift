//
//  CSMainViewController.swift
//  ComponentForSwift
//
//  Created by 橙子 on 2017/5/9.
//  Copyright © 2017年 Orange. All rights reserved.
//

import UIKit
import Foundation

class CSMainViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var tableView : UITableView!
    var dataSource : NSArray!
    static let UITableViewCellReuseId = "UITableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.prepareForView()
    }
    
    func prepareForView() {

        self.title = "ComponentForSwift"
        
        tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.kwidth, height: self.view.frame.size.height), style: UITableViewStyle.grouped)
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: CSMainViewController.UITableViewCellReuseId)
        self.view.addSubview(tableView)
        
        
        dataSource = ["CSUIViewViewController","CSUILabelViewController"];
    }

    // MARK: - Delegate
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CSMainViewController.UITableViewCellReuseId, for: indexPath)
        cell.textLabel?.text = dataSource.object(at: indexPath.row) as? String
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let className = dataSource.object(at: indexPath.row) as! String
        let customClass = NSClassFromString("ComponentForSwift." + className) as? UIViewController.Type;
        let vc:UIViewController = customClass!.init()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count;
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
