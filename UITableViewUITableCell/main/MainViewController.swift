//
//  ViewController.swift
//  UITableViewUITableCell
//
//  Created by Rustam Keneev on 4/11/21.
//

import UIKit
import SnapKit

class MainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var data:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data.append("1")
        data.append("2")
        data.append("3")
        data.append("4")
        data.append("5")
        
        let tableView = UITableView(frame: .zero,style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self 
        tableView.register(cellWithClass: MainCell.self)
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints{(make) in
            make.left.bottom.top.right.equalTo(view)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MainCell()
        cell.loadData(text: data[indexPath.row])
        return cell
    }
}

