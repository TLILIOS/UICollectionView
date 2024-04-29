//
//  ViewController.swift
//  UICollectionView
//
//  Created by HTLILI on 24/04/2024.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    var arrayPlants = [Plant]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        arrayPlants.append(Plant(photo: UIImage(named: "img_plant1")!, price: 155))
        arrayPlants.append(Plant(photo: UIImage(named: "img_plant2")!, price: 321))
        arrayPlants.append(Plant(photo: UIImage(named: "img_plant3")!, price: 200))
        arrayPlants.append(Plant(photo: UIImage(named: "img_plant4")!, price: 178))
        arrayPlants.append(Plant(photo: UIImage(named: "img_plant5")!, price: 190))
        arrayPlants.append(Plant(photo: UIImage(named: "img_plant6")!, price: 221))
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayPlants.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let plant = arrayPlants[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "plantCell", for: indexPath) as! PlantCollectionViewCell
        cell.setUpCell(photo: plant.photo, price: plant.price)
        cell.backgroundColor = .cyan
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.49, height: self.view.frame.height * 0.49)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0.1
    }

    
    struct Plant {
        let photo: UIImage
        let price: Double
    }

}

