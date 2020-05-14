//
//  GroupCell.swift
//  AutoCollectionView
//
//  Created by kiev on 14.05.2020.
//  Copyright © 2020 kiev. All rights reserved.
//

import UIKit

class GroupCell: UICollectionViewCell {

    @IBOutlet weak var nameGroup: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setuoCell(group:Group){
        self.nameGroup.text = group.name
        
    }
}
