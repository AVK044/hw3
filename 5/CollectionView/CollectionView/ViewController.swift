//
//  ViewController.swift
//  CollectionView
//
//  Created by kiev on 12.05.2020.
//  Copyright © 2020 kiev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    var images = [UIImage]()
    let countCells = 2
    let offset:CGFloat = 2
    override func viewDidLoad() {
        super.viewDidLoad()
    
        for i in 1...11{
            let image = UIImage(named: "image\(i)")!
            images.append(image)
    }

}
}

    extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return images.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellImage", for: indexPath)as!ImageCollectionViewCell
    let image = images[indexPath.item]
    cell.photoView.image = image
    return cell
}
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let frameCV =  collectionView.frame
            let widthCell = frameCV.width / CGFloat(countCells)
            let heightCell = widthCell
            let spacing = CGFloat((countCells + 1)) * offset / CGFloat(countCells)
            return CGSize(width: widthCell - spacing, height: heightCell - (offset*2))
        }

}


