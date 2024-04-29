//
//  ProductsTableViewCell.swift
//  UICollectionView
//
//  Created by HTLILI on 28/04/2024.
//

import UIKit

class ProductsTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arryPhotos = [UIImage]()
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpCell(title: String, arrayPhotos: [UIImage]) {
        self.lblTitle.text = title
        self.arryPhotos = arrayPhotos
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arryPhotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colProductCell", for: indexPath) as! ProductsCollectionViewCell
        cell.imgProductPhoto.image = arryPhotos[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       CGSize(width: collectionView.frame.width * 0.3, height: collectionView.frame.height * 0.3)
    }


}
