//
//  PlantCollectionViewCell.swift
//  UICollectionView
//
//  Created by HTLILI on 24/04/2024.
//

import UIKit

class PlantCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imagePlant: UIImageView!
    
    @IBOutlet weak var lblPlantPrice: UILabel!
    
    func setUpCell(photo: UIImage, price: Double) {
        imagePlant.image = photo
        lblPlantPrice.text = "\(price) €"
    }
}
