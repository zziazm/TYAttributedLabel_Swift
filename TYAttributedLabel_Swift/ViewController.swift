//
//  ViewController.swift
//  TYAttributedLabel_Swift
//
//  Created by 赵铭 on 2017/8/18.
//  Copyright © 2017年 zm. All rights reserved.
//

import UIKit


class TableViewItem: NSObject {
    var title: String?
    var detailText: String?
    var destVcClass: UIViewController.Type?
}



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    
    
    lazy var tableView = UITableView()
    lazy var itemArray = [TableViewItem]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addTableItems()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = self.view.bounds
        self.view.addSubview(tableView)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func addTableItems() -> Void {
        self.addTableItem(title: "SimpleText", detailText: "简单文本显示", destVcClass: SimpleTextViewController.self)
    }
    
    func addTableItem(title: String, detailText: String, destVcClass: UIViewController.Type) -> Void {
        let item = TableViewItem()
        item.title = title
        item.detailText = detailText
        item.destVcClass = destVcClass
        itemArray.append(item)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: -- UITableViewDataSource
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return itemArray.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        let item = itemArray[indexPath.row]
        cell?.textLabel?.text = item.title
        cell?.detailTextLabel?.text = item.detailText
        return cell!
    }
    
    //MARK: -- UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = itemArray[indexPath.row]
        if let vc = item.destVcClass?.init(){
            vc.view.backgroundColor = UIColor.white
            vc.title = item.title
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

}

