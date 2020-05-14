//
//  ProductCell.swift
//  AutoCollectionView
//
//  Created by kiev on 14.05.2020.
//  Copyright © 2020 kiev. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var priceProduct: UILabel!
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//   override func prepareForReuse() {
//      super.prepareForReuse()
//     self.productImage.image = nil
//    }

    func setupCell(product:Product){
        self.productImage.image = product.image
        self.nameProduct.text = product.name
        self.priceProduct.text = String(product.price)
    }
}
