//
//  Menu.swift
//  AutoCollectionView
//
//  Created by kiev on 14.05.2020.
//  Copyright © 2020 kiev. All rights reserved.
//

import Foundation
import UIKit

struct Group {
    var name:String
    //var groups:[Group]
    var products:[Product]
}

struct Product {
   
    var name : String
    var price : Float
    var image : UIImage
}
class Menu {
    
    var groups = [Group]()
    
    init(){
    setup()
    }
    
    func setup(){
        
        let a1 = Product(name: "Audi1", price: 100000, image: UIImage(named: "a1")!)
        let a2 = Product(name: "Audi2", price: 110000, image: UIImage(named: "a2")!)
        let a3 = Product(name: "Audi3", price: 120000, image: UIImage(named: "a3")!)
        
        let a4 = Product(name: "BMW1", price: 99000, image: UIImage(named: "b1")!)
        let a5 = Product(name: "BMW2", price: 120000, image: UIImage(named: "b2")!)
        let a6 = Product(name: "BMW3", price: 1150000, image: UIImage(named: "b3")!)
        
        let a7 = Product(name: "Mercedes1", price: 120000, image: UIImage(named: "m1")!)
        let a8 = Product(name: "Mercedes2", price: 125000, image: UIImage(named: "m2")!)
        let a9 = Product(name: "Mercedes3", price: 130000, image: UIImage(named: "m3")!)
       
        let products1 = [a1,a2,a3]
        let products2 = [a4,a5,a6]
        let products3 = [a7,a8,a9]
        
        let g1 = Group(name: "Audi", products: products1)
        let g2 = Group(name: "BMW", products: products2)
        let g3 = Group(name: "Mercedes", products: products3)
        
        self.groups = [g1,g2,g3]
       
    }
}
//MARK : Размер строки
extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = (self as NSString).size(withAttributes: fontAttributes)
        return ceil(size.width)
    }
}
