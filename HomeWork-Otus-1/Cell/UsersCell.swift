//
//  PositionTableViewCell.swift
//  HomeWork-Otus-1
//
//  Created by Albert Fayzullin on 20.04.2022.
//

import UIKit

class UsersCell: UITableViewCell {

    var userItem: UsersItem?
    
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    func setupItem(item: UsersItem) {
        self.userItem = item
        userNameLabel.text = "\(item.firstname) \(item.lastname)"
        positionLabel.text = item.position
    }
}
