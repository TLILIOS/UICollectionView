//
//  ProductsViewController.swift
//  UICollectionView
//
//  Created by HTLILI on 28/04/2024.
//

import UIKit

class ProductsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    var arrayProducts = [Products]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        arrayProducts[Products(title: <#T##String#>, photos: <#T##[UIImage]#>)]
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }


}
struct Products {
    let title: String
    let photos: [UIImage]
}
