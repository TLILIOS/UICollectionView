//
//  PhotoViewController.swift
//  UICollectionView
//
//  Created by HTLILI on 26/04/2024.
//

import UIKit

class PhotoViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var arrayPhotos = [Photo]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayPhotos.append(Photo(photos: [UIImage(named: "Place1")!, UIImage(named: "Place2")!,UIImage(named: "Place3")!, UIImage(named: "Place4")!], name: "2018"))
        arrayPhotos.append(Photo(photos: [UIImage(named: "Place5")!,UIImage(named: "Place6")!, UIImage(named: "Place7")!, UIImage(named: "Place8")!] , name: "2019"))
        arrayPhotos.append(Photo(photos: [UIImage(named: "Place9")!, UIImage(named: "Place10")!, UIImage(named: "Place11")!, UIImage(named: "Place12")!, ], name: "2020"))
        collectionView.dataSource = self
        collectionView.delegate = self
        arrayPhotos.reverse()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arrayPhotos.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayPhotos[section].photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoPlaceCollectionViewCell
        cell.imgPlacePhoto.image = arrayPhotos[indexPath.section].photos[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 0.325, height: collectionView.frame.height * 0.325)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "photoHeader", for: indexPath) as! PhotosCollectionReusableView
            header.lblHeaderTitle.text = arrayPhotos[indexPath.section].name
            header.backgroundColor = .orange
            return header
        } else {
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "photoFooter", for: indexPath)
            footer.backgroundColor = .lightGray
            return footer
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
}
    struct Photo {
        var photos: [UIImage]
        var name: String
    }



