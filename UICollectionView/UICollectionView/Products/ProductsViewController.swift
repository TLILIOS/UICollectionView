//
//  ProductsViewController.swift
//  UICollectionView
//
//  Created by HTLILI on 28/04/2024.
//

import UIKit

class ProductsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var tableView: UITableView!
    var arrayProducts = [Products]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        arrayProducts.append(Products(title: "Top Rated", photos: [UIImage(named: "Moto1")!, UIImage(named: "Moto2")!, UIImage(named: "Moto3")!]))
        
        arrayProducts.append(Products(title: "Top 4", photos: [UIImage(named: "Moto4")!, UIImage(named: "Moto5")!, UIImage(named: "Moto6")!, UIImage(named: "Moto7")!]))
        
        arrayProducts.append(Products(title: "Classic!", photos: [UIImage(named: "Moto8")!, UIImage(named: "Moto9")!, UIImage(named: "Moto10")!, UIImage(named: "Moto11")!, UIImage(named: "Moto12")!, UIImage(named: "Moto13")!]))
        
        arrayProducts.append(Products(title: "Townsman", photos: [UIImage(named: "Moto14")!, UIImage(named: "Moto15")!, UIImage(named: "Moto16")!]))
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tblProductCell", for: indexPath) as! ProductsTableViewCell
        let product = arrayProducts[indexPath.row]
        cell.setUpCell(title: product.title, arrayPhotos: product.photos)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }


}
struct Products {
    let title: String
    let photos: [UIImage]
}
