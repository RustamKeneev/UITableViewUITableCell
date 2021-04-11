//
//  ViewController.swift
//  UITableViewUITableCell
//
//  Created by Rustam Keneev on 4/11/21.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {

    var data:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data.append("1")
        data.append("2")
        data.append("3")
        data.append("4")
        data.append("5")
        let tableView = UITableView(frame: .zero,style: .grouped)
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints{(make) in
            make.top.bottom.left.right.equalTo(view)
        }

    }
}

