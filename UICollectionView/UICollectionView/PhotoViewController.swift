//
//  PhotoViewController.swift
//  UICollectionView
//
//  Created by HTLILI on 26/04/2024.
//

import UIKit

class PhotoViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        <#code#>
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayPhotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath)
        
        return cell
    }
    
    var arrayPhotos = [Photo]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayPhotos.append(Photo(photos: [UIImage(named: "Place1")!, UIImage(named: "Place2")!,UIImage(named: "Place3")!, UIImage(named: "Place4")!], name: "2018"))
        arrayPhotos.append(Photo(photos: [UIImage(named: "Place5")!,UIImage(named: "Place6")!, UIImage(named: "Place7")!, UIImage(named: "Place8")!] , name: "2019"))
        arrayPhotos.append(Photo(photos: [UIImage(named: "Place1")!, UIImage(named: "Place1")!, UIImage(named: "Place1")!, UIImage(named: "Place1")!, ], name: <#T##String#>))
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    struct Photo {
        var photos: [UIImage]
        var name: String
    }


}
