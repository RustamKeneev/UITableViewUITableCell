//
//  MainCell.swift
//  UITableViewUITableCell
//
//  Created by Rustam Keneev on 4/12/21.
//

import UIKit

class MainCell: BaseTableViewCell {
    var label = UILabel()
    override func addSubview() {
        label.snp.makeConstraints{(make) in
            make.center.equalTo(self)
        }
    }
    func loadData(text: String) {
        label.text = text
    }
}
