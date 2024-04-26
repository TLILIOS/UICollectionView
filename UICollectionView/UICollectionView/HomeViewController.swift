//
//  HomeViewController.swift
//  UICollectionView
//
//  Created by HTLILI on 24/04/2024.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    var arrayProductPhoto = [UIImage(named: "BMW1")!,UIImage(named: "BMW2")!, UIImage(named: "BMW3")!, UIImage(named: "BMW4")!, UIImage(named: "BMW5")!]
    
    var timer: Timer?
    var currentIndexCell = 0
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrayProductPhoto.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCell", for: indexPath) as! HomeCollectionViewCell
        cell.imgProductPhoto.image = arrayProductPhoto[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        pageControl.numberOfPages = arrayProductPhoto.count
        startTimer()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(nextPhoto), userInfo: "ok", repeats: true)
    }
    @objc func nextPhoto() {
        if currentIndexCell < arrayProductPhoto.count - 1 {
            currentIndexCell += 1
        } else {
            currentIndexCell = 0
        }
      
        collectionView.scrollToItem(at: IndexPath(item: currentIndexCell, section: 0), at: .centeredHorizontally, animated: true)
        pageControl.currentPage = currentIndexCell
    }
    
}
